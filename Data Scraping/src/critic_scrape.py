from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from bs4 import BeautifulSoup
import json
import re
import time

file_name = 'Data Scraping/data/critics_link_data.json'

# Setup Chrome driver (make sure chromedriver is in PATH or specify path in Service())
driver = webdriver.Chrome()

with open(file_name, 'r') as f:
    data = json.load(f)


result = []

for url_obj in data:
    url = url_obj["link"]
    driver.get(url)
    time.sleep(3)  

    soup = BeautifulSoup(driver.page_source, 'html.parser')

    # Get critic ID
    id = url_obj["critic_id"] if "critic_id" in url_obj else "N/A"

    # Get name
    h1 = soup.find('h1', class_='thg_h1_size')
    name = h1.text.strip() if h1 else "Name not found"

    # Get YouTube link
    yt_link = None
    yt_div = h1.find_next_sibling('div') if h1 else None
    if yt_div:
        yt_a = yt_div.find('a')
        yt_link = yt_a['href'] if yt_a else "YouTube link not found"
    else:
        yt_link = "YouTube div not found"

    result.append({
        "id": id,
        "name": name,
        "youtube_link": yt_link,
    })

driver.quit()

# Save results to JSON file
output_file = 'Data Scraping/data/critic_data.json'
with open(output_file, 'w') as f:
    json.dump(result, f, indent=4)


