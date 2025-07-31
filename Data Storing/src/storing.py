from dotenv import load_dotenv
import os
import psycopg2

load_dotenv()

conn = psycopg2.connect(
    dbname=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASS"),
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT")
)

cur = conn.cursor()

with open("Data Scraping/data/Critic.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Critic\" (critic_id, name) FROM STDIN WITH CSV", f)


with open("Data Scraping/data/Shoe.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Shoe\" (shoe_id, name, brand, player, release_date, description, shoe_type,  retail_price) FROM STDIN WITH CSV", f)

with open("Data Scraping/data/Colorway.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Colorway\" (colorway_id, shoe_id, colorway) FROM STDIN WITH CSV", f)

with open("Data Scraping/data/Review.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Review\" (shoe_id, critic_id, rating, date, type, description) FROM STDIN WITH CSV", f)

with open("Data Scraping/data/Expert.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Expert\" (critic_id, profile_link) FROM STDIN WITH CSV", f)

with open("Data Scraping/data/Store.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Store\" (store_id, name, main_link) FROM STDIN WITH CSV", f)

with open("Data Scraping/data/Shoe_listing.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"Shoe_listing\" (store_id, shoe_id, price, link) FROM STDIN WITH CSV", f)

with open("Data Scraping/data/User.csv", "r", encoding="utf-8") as f:
    next(f)  
    cur.copy_expert("COPY public.\"User\" (critic_id) FROM STDIN WITH CSV", f)

conn.commit()
cur.close()
conn.close()
