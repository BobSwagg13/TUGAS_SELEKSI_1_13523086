import json
import requests
from bs4 import BeautifulSoup

file_data = 'Data Scraping/data/shoe_data.json'
file_link = 'Data Scraping/data/shoe_links.json'

request_headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}

with open(file_link, 'r') as f:
    data = json.load(f)

links_list = data['shoe_links']

result = []
for i, base_link in enumerate(links_list):
    link = base_link.rstrip('/') + "-colorways/"
    print(f"Processing link {i+1}/{len(links_list)}: {link}")

    response = requests.get(link, headers=request_headers)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        colorway_headers = soup.find_all('h2')

        if colorway_headers:
            shoe_count = 1
            for header in colorway_headers:
                # Get colorway
                temp_div = header.find('div')
                colorway_div = temp_div.find_next_sibling('div') if temp_div else None
                if colorway_div:
                    colorway = colorway_div.get_text(strip=True)

                    # Clean up colorway text to enable csv usage for SQL insertion
                    colorway = colorway.replace('\u200b', '')
                    result.append({
                        "colorway_id": shoe_count,
                        "shoe_id": i + 1,
                        "colorway": colorway
                    })
                    shoe_count += 1
        else:
            print("No colorways found.")
        print(result)
        json_output = json.dumps(result, indent=4)
        with open('Data Scraping/data/shoe_colorway.json', 'w') as f:
            f.write(json_output)
    else:
        print(f"Failed to retrieve page for link {i+1}. Status code: {response.status_code}")
