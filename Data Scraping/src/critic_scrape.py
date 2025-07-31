from selenium import webdriver
from bs4 import BeautifulSoup
import json
import time
from selenium.common.exceptions import WebDriverException

file_name = 'Data Scraping/data/critics_link_data.json'


driver = webdriver.Chrome()

with open(file_name, 'r') as f:
    data = json.load(f)

result = []
expert = []
user = []
id_counter = 1


MAX_RETRIES = 3
RETRY_DELAY_SECONDS = 5 

for url_obj in data:
    url = url_obj["link"]
    
    
    for attempt in range(MAX_RETRIES):
        try:
            print(f"Attempting to connect to {url} (Attempt {attempt + 1}/{MAX_RETRIES})...")
            driver.get(url)
            print("Connection successful.")
            break
        except WebDriverException as e:
            print(f"Connection failed: {e}")
            if attempt < MAX_RETRIES - 1:
                print(f"Waiting {RETRY_DELAY_SECONDS} seconds before retrying...")
                time.sleep(RETRY_DELAY_SECONDS)
            else:
                print(f"All {MAX_RETRIES} attempts failed for {url}. Skipping this URL.")
                soup = None
    else:

        continue 

    
    soup = BeautifulSoup(driver.page_source, 'html.parser')

    # Get name
    h1 = soup.find('h1', class_='thg_h1_size')
    name = h1.text.strip() if h1 else "Name not found"

    result.append({
        "critic_id": id_counter,
        "name": name,
    })

    # Get Profile link
    if url_obj["is_expert"] == 1:
        yt_link = None
        yt_div = h1.find_next_sibling('div') if h1 else None
        if yt_div:
            yt_a = yt_div.find('a')
            yt_link = yt_a['href'] if yt_a else "Profile link not found"
        else:
            yt_link = "Profile div not found"

        expert.append({
            "critic_id": id_counter,
            "profile_link": yt_link,
        })
    else:
        user.append({
            "critic_id": id_counter,
        })
        
    id_counter += 1
    time.sleep(1)

driver.quit()


# Save results to JSON file
with open('Data Scraping/data/Critic.json', 'w') as f:
    json.dump(result, f, indent=4)

with open('Data Scraping/data/Expert.json', 'w') as f:
    json.dump(expert, f, indent=4)

with open('Data Scraping/data/User.json', 'w') as f:
    json.dump(user, f, indent=4)


