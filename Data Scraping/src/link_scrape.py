import requests
from bs4 import BeautifulSoup
import json


# Scraper to get all shoe links
url = 'https://www.thehoopsgeek.com/shoe-reviews/'
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}

response = requests.get(url, headers=headers)

if response.status_code == 200:
    soup = BeautifulSoup(response.text, 'html.parser')

    all_a_tags = soup.select('h2 a')

    all_links = ["https://www.thehoopsgeek.com" + tag['href'] for tag in all_a_tags if tag.has_attr('href')]

    shoes_links = [link for link in all_links if '/shoe-reviews/' in link]

    # Only 18 pages of shoes
    for i in range(2, 19):
        soup = BeautifulSoup(requests.get(f'https://www.thehoopsgeek.com/shoe-reviews/?pg={i}', headers=headers).text, 'html.parser')
        all_a_tags = soup.select('h2 a')
        all_links = ["https://www.thehoopsgeek.com" + tag['href'] for tag in all_a_tags if tag.has_attr('href')]
        shoes_links.extend([link for link in all_links if '/shoe-reviews/' in link])

        print(shoes_links)
    print(f"Total links found: {len(shoes_links)}")
    

else:
    print("Failed to retrieve page. Status code:", response.status_code)


output_data = {
        "total_links_found": len(shoes_links),
        "shoe_links": shoes_links
    }

json_output = json.dumps(output_data, indent=4)
with open('Data Scraping/data/shoe_links.json', 'w') as f:
    f.write(json_output)