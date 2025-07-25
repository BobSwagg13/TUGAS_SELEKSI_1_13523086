import json
import csv

# Convert JSON files to CSV format


with open("Data Scraping/data/shoe_data.json") as f:
    data = json.load(f)

with open("Data Scraping/data/shoe_data.csv", mode="w", newline="") as file:
    writer = csv.DictWriter(file, fieldnames=["shoe_id", "name", "brand", "release_date", "shoe_type", "description", "price", "expert_rating", "traction_rating", "cushion_rating", "materials_rating", "support_rating", "fit_rating", "outdoor_rating", "size", "width"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/shoe_colorway.json") as f:
    data = json.load(f)

with open("Data Scraping/data/shoe_colorway.csv", mode="w", newline="") as file:
    writer = csv.DictWriter(file, fieldnames=["colorway_id", "shoe_id", "colorway"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/critic_data.json") as f:
    data = json.load(f)

with open("Data Scraping/data/critic_data.csv", mode="w", newline="") as file:
    writer = csv.DictWriter(file, fieldnames=["critic_id", "name", "youtube_channel"])
    writer.writeheader()
    writer.writerows(data)

with open("Data Scraping/data/review_data.json") as f:
    data = json.load(f)

with open("Data Scraping/data/review_data.csv", mode="w", newline="") as file:
    writer = csv.DictWriter(file, fieldnames=["critic_id", "shoe_id", "rating", "name", "date", "description"])
    writer.writeheader()
    writer.writerows(data)
