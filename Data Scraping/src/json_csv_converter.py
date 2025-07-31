import json
import csv

# Convert JSON files to CSV format for easier insertion to DB

with open("Data Scraping/data/Shoe.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Shoe.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["shoe_id", "name", "brand", "player", "release_date","description", "shoe_type",  "retail_price"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/Colorway.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Colorway.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["colorway_id", "shoe_id", "colorway"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/Critic.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Critic.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["critic_id", "name"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/Review.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Review.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["review_id","shoe_id", "critic_id", "rating", "date", "type", "description"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/Expert.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Expert.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["critic_id", "profile_link"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/Shoe_listing.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Shoe_listing.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["store_id", "shoe_id", "price", "link"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/Store.json") as f:
    data = json.load(f)

with open("Data Scraping/data/Store.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["store_id", "name", "main_link"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/User.json") as f:
    data = json.load(f)

with open("Data Scraping/data/User.csv", mode="w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["critic_id"])
    writer.writeheader()
    writer.writerows(data)