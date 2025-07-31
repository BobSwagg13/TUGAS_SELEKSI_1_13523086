from dotenv import load_dotenv
import os
import psycopg2
import pandas as pd

load_dotenv()

# Connection to source (operational DB)
src_conn = psycopg2.connect(
    dbname=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASS"),
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT")
)

# Connection to target (data warehouse)
dwh_conn = psycopg2.connect(
    dbname=os.getenv("DW_DB_NAME"),
    user=os.getenv("DW_DB_USER"),
    password=os.getenv("DW_DB_PASS"),
    host=os.getenv("DW_DB_HOST"),
    port=os.getenv("DW_DB_PORT")
)

# Example: Load dimShoe
shoe_df = pd.read_sql_query("""
    SELECT DISTINCT shoe_id, name, brand, retail_price, release_date, player
    FROM public."Shoe"
""", src_conn)

critic_df = pd.read_sql_query("""
    SELECT DISTINCT critic_id, name
    FROM public."Critic"
""", src_conn)

Expert_df = pd.read_sql_query("""
    SELECT DISTINCT e.critic_id AS critic_id, c.name AS name
    FROM public."Expert" e
    LEFT JOIN public."Critic" c ON e.critic_id = c.critic_id
""", src_conn)

User_df = pd.read_sql_query("""
    SELECT DISTINCT u.critic_id AS critic_id, c.name AS name
    FROM public."User" u
    LEFT JOIN public."Critic" c ON u.critic_id = c.critic_id
""", src_conn)

Review_df = pd.read_sql_query("""
    SELECT DISTINCT type AS review_type, rating, date AS full_date, shoe_id, critic_id
    FROM "Review"
""", src_conn)



# Insert new data
for _, row in shoe_df.iterrows():
    with dwh_conn.cursor() as cur:
        cur.execute("""
            INSERT INTO public."Dim_Shoe" (shoe_id, name, brand, retail_price, release_date, player)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, tuple(row))

for _, row in Expert_df.iterrows():
    with dwh_conn.cursor() as cur:
        critic_id = row["critic_id"]
        name = row["name"]
        type = "expert"
        cur.execute("""
            INSERT INTO public."Dim_Critic" (critic_id, name, type)
            VALUES (%s, %s, %s)
        """, (critic_id, name, type))

for _, row in User_df.iterrows():
    with dwh_conn.cursor() as cur:
        critic_id = row["critic_id"]
        name = row["name"]
        type = "user"
        cur.execute("""
            INSERT INTO public."Dim_Critic" (critic_id, name, type)
            VALUES (%s, %s, %s)
        """,  (critic_id, name, type))

for _, row in Review_df.iterrows():
    with dwh_conn.cursor() as cur:
        full_date = pd.to_datetime(row['full_date'])  

        year = full_date.year
        quarter = (full_date.month - 1) // 3 + 1
        month = full_date.month
        day = full_date.day
        cur.execute("""
            INSERT INTO public."Dim_Date" (full_date, year, quarter, month, day)
            VALUES (%s, %s, %s, %s, %s)
        """, (full_date, year, quarter, month, day))

        cur.execute("""
            INSERT INTO public."Dim_ReviewType" (review_type)
            VALUES (%s)
        """, (row['review_type'],))

for _, row in Review_df.iterrows():
    with dwh_conn.cursor() as cur:
        cur.execute("""SELECT shoe_key FROM public."Dim_Shoe" WHERE shoe_id = %s""", (row["shoe_id"],))
        result = cur.fetchone()
        if not result:
            continue
        shoe_key = result[0]

        cur.execute("""SELECT critic_key FROM public."Dim_Critic" WHERE critic_id = %s""", (row["critic_id"],))
        result = cur.fetchone()
        if not result:
            continue
        critic_key = result[0]

        cur.execute("""SELECT review_type_key FROM public."Dim_ReviewType" WHERE review_type = %s""", (row["review_type"],))
        result = cur.fetchone()
        if not result:
            continue
        review_type_key = result[0]

        cur.execute("""SELECT date_key FROM public."Dim_Date" WHERE full_date = %s""", (row["full_date"],))
        result = cur.fetchone()
        if not result:
            continue
        date_key = result[0]

        cur.execute("""
            INSERT INTO public."Fact_Review" (
                critic_key, shoe_key, review_type_key, date_key, rating
            )
            VALUES (%s, %s, %s, %s, %s)
        """, (critic_key, shoe_key, review_type_key, date_key, row["rating"]))


dwh_conn.commit()
