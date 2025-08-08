import pandas as pd
import psycopg2
import os
from dotenv import load_dotenv

# =================== Program to load data from csv which ensures uniqueness ================

# Loads data from csv
Review_df = pd.read_csv("Data Scraping/data/Review.csv")  
Shoe_df = pd.read_csv("Data Scraping/data/Shoe.csv")  
Colorway_df = pd.read_csv("Data Scraping/data/Colorway.csv")  
Critic_df = pd.read_csv("Data Scraping/data/Critic.csv")  
Expert_df = pd.read_csv("Data Scraping/data/Expert.csv")  
Store_df = pd.read_csv("Data Scraping/data/Store.csv")  
Shoe_listing_df = pd.read_csv("Data Scraping/data/Shoe_listing.csv")  
User_df = pd.read_csv("Data Scraping/data/User.csv")  

load_dotenv()
conn = psycopg2.connect(
    dbname=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASS"),
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT")
)


for _, row in Shoe_df.iterrows():
    if row['player'] == None:
        row['player'] = ''

    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."Shoe" (name, brand, player, release_date, description, shoe_type, retail_price)
            SELECT %s, %s, %s, %s, %s, %s, %s
            WHERE NOT EXISTS (
                SELECT 1 FROM public."Shoe" WHERE name = %s
            );
        """, (row['name'], row['brand'], row['player'], row['release_date'], row['description'], row['shoe_type'], row['retail_price'], row['name']))

conn.commit()

for _, row in Store_df.iterrows():
    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."Store" (name, main_link)
            SELECT %s, %s
            WHERE NOT EXISTS (
                SELECT 1 FROM public."Store" WHERE name = %s
            );
        """, (row['name'], row['main_link'], row['name']))

conn.commit()

for _, row in Critic_df.iterrows():
    if pd.isna(row['name']):
        continue
    with conn.cursor() as cur:
        
        cur.execute("""
            INSERT INTO public."Critic" (name)
            SELECT %s
            WHERE NOT EXISTS (
                SELECT 1 FROM public."Critic" WHERE name = %s
            );
        """, (row['name'], row['name']))

conn.commit()


original_shoe_df = pd.read_sql_query("""
    SELECT DISTINCT shoe_id, name, brand, retail_price, release_date, player
    FROM public."Shoe"
""", conn)

colorway_id = 1
current_shoe = ""
for _, row in Colorway_df.iterrows():
    name_series = Shoe_df.loc[Shoe_df["shoe_id"] == row['shoe_id'], 'name']
    if name_series.empty:
        continue  
    name = name_series.values[0]

    shoe_id_series = original_shoe_df.loc[original_shoe_df["name"] == name, 'shoe_id']
    if shoe_id_series.empty:
        continue
    shoe_id = shoe_id_series.values[0]

    if current_shoe == name:
        colorway_id += 1
    else:
        colorway_id = 1
        current_shoe = name

    if pd.isna(row['colorway']):
        row['colorway'] = None
    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."Colorway" (colorway_id, shoe_id, colorway)
            VALUES (%s, %s, %s)
            ON CONFLICT (colorway_id, shoe_id) 
            DO UPDATE SET colorway = EXCLUDED.colorway;
        """, (int(colorway_id), int(shoe_id), row['colorway']))
    

conn.commit()

original_critic_df = pd.read_sql_query("""
    SELECT DISTINCT critic_id, name
    FROM public."Critic"
""", conn)

for _, row in Expert_df.iterrows():
    name_series = Critic_df.loc[Critic_df['critic_id'] == row['critic_id'], 'name']
    name = name_series.values[0]

    original_id_series = original_critic_df.loc[original_critic_df['name'] == name, 'critic_id']
    if original_id_series.empty:
        continue
    original_id = original_id_series.values[0]

    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."Expert" (critic_id, profile_link)
            SELECT %s, %s
            WHERE NOT EXISTS (
                SELECT 1 FROM public."Expert" WHERE profile_link = %s
            );
        """, (int(original_id), row['profile_link'], row['profile_link']))
    
conn.commit()

for _, row in User_df.iterrows():
    name_series = Critic_df.loc[Critic_df['critic_id'] == row['critic_id'], 'name']
    name = name_series.values[0]

    original_id_series = original_critic_df.loc[original_critic_df['name'] == name, 'critic_id']
    if original_id_series.empty:
        continue
    original_id = original_id_series.values[0]

    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."User" (critic_id)
            SELECT %s
            WHERE NOT EXISTS (
                SELECT 1 FROM public."User" WHERE critic_id = %s
            );
        """, (int(original_id), int(original_id)))
    
conn.commit()

original_store_df = pd.read_sql_query("""
    SELECT DISTINCT store_id, name, main_link
    FROM public."Store"
""", conn)

for _, row in Shoe_listing_df.iterrows():
    store_name_series = Store_df.loc[Store_df['store_id'] == row['store_id'], 'name']
    store_name = store_name_series.values[0]

    original_store_id_series = original_store_df.loc[original_store_df['name'] == store_name, 'store_id']
    if original_store_id_series.empty:
        continue
    original_store_id = original_store_id_series.values[0]

    shoe_name_series = Shoe_df.loc[Shoe_df['shoe_id'] == row['shoe_id'], 'name']
    shoe_name = shoe_name_series.values[0]

    original_shoe_id_series = original_shoe_df.loc[original_shoe_df['name'] == shoe_name, 'shoe_id']
    if original_shoe_id_series.empty:
        continue
    original_shoe_id = original_shoe_id_series.values[0]


    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."Shoe_listing" (store_id, shoe_id, price, link)
            VALUES (%s, %s, %s, %s)
            ON CONFLICT (store_id, shoe_id)
            DO UPDATE SET
                price = EXCLUDED.price,
                link = EXCLUDED.link;
        """, (int(original_store_id), int(original_shoe_id), row['price'], row['link']))

conn.commit()

for _, row in Review_df.iterrows():
    critic_name_series = Critic_df.loc[Critic_df['critic_id'] == row['critic_id'], 'name']
    critic_name = critic_name_series.values[0]

    original_critic_id_series = original_critic_df.loc[original_critic_df['name'] == critic_name, 'critic_id']
    if original_critic_id_series.empty:
        continue
    original_critic_id = original_critic_id_series.values[0]

    shoe_name_series = Shoe_df.loc[Shoe_df['shoe_id'] == row['shoe_id'], 'name']
    shoe_name = shoe_name_series.values[0]

    original_shoe_id_series = original_shoe_df.loc[original_shoe_df['name'] == shoe_name, 'shoe_id']
    if original_shoe_id_series.empty:
        continue
    original_shoe_id = original_shoe_id_series.values[0]

    if pd.isna(row['description']):
        row['description'] = ''
    with conn.cursor() as cur:
        cur.execute(""" 
            INSERT INTO public."Review" (shoe_id, critic_id, rating, date, type, description)
            SELECT %s, %s, %s, %s, %s, %s
            WHERE NOT EXISTS (
                SELECT 1 FROM public."Review" WHERE shoe_id = %s AND critic_id = %s AND rating = %s AND date = %s AND type = %s AND ((description IS NULL AND %s IS NULL) OR description = %s)
            );
        """, (int(original_shoe_id), int(original_critic_id), row['rating'], row['date'], row['type'], row['description'], int(original_shoe_id), int(original_critic_id), row['rating'], row['date'], row['type'], row['description'], row['description']))
conn.commit()