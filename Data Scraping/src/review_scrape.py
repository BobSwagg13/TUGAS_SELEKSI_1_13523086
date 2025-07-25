from email.mime import text
import json
import requests
import re
import datetime
from bs4 import BeautifulSoup

file_name = 'Data Scraping/data/shoe_links.json'
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}

result = []
profile_links = []

with open(file_name, 'r') as f:
        data = json.load(f)

total_count = data['total_links_found']
links_list = data['shoe_links']

response = requests.get("https://www.thehoopsgeek.com/shoe-reviews/critic/?id=48", headers=headers)

shoe_id = 1
for link in links_list:
    response = requests.get(link, headers=headers)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')

        expert_overall_header = soup.select('h3', id = 'overall')
        expert_overall_div = expert_overall_header[1].find_next_sibling('div') if expert_overall_header else None
        temp_div = expert_overall_div.find('div') if expert_overall_div else None
        temp_div = temp_div.find_next_sibling('div') if temp_div else None
        temp_div = temp_div.find_next_sibling('div') if temp_div else None
        expert_review_div = temp_div.find_next_sibling('div') if temp_div else None
        
        while expert_review_div:
            if expert_review_div:
                link = expert_review_div.find('a')
                if link and link.has_attr('href'):
                    # Extract critic ID from the link
                    critic_id = int(link['href'][24:])
                    expert_review_link = "https://www.thehoopsgeek.com" + link['href']
                    if expert_review_link not in profile_links:
                        profile_links.append(expert_review_link)

                profile_text = expert_review_div.get_text(strip=True)

                # Extract rating, name, date, and description using regex
                pattern = r"(?P<rating>\d+\.\d)(?P<name>.*?)(?P<date>[A-Z][a-z]{2,9} \d{1,2}, \d{4})(?P<desc>.*)"

                match = re.search(pattern, profile_text)
                if match:
                    rating = float(match.group("rating"))
                    name = match.group("name").strip()
                    date = match.group("date")
                    date_obj = datetime.datetime.strptime(date, "%B %d, %Y")
                    sql_date_string = date_obj.strftime("%Y-%m-%d")
                    description = match.group("desc").strip()[:-12]
                    result.append({
                        "shoe_id": shoe_id,
                        "critic_id": critic_id,
                        "rating": rating,
                        "name": name,
                        "date": sql_date_string,
                        "description": description
                    })

            expert_review_div = expert_review_div.find_next_sibling('div')
        shoe_id += 1
    else:
        print(f"Failed to retrieve {link}")


json_output = json.dumps(result, indent=4)
with open('Data Scraping/data/review_data.json', 'w') as f:
    f.write(json_output)  
        