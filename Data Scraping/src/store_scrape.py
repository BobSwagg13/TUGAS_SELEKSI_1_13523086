import json
import requests
import re
from bs4 import BeautifulSoup


# Scraper to get all shoe data
file_name = 'Data Scraping/data/shoe_links.json'
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}

store = []
shoe_listing = []
seen_store_names = set()
store_name_to_id_map = {}

try:
    with open(file_name, 'r') as f:
        data = json.load(f)

    total_count = data['total_links_found']
    links_list = data['shoe_links']

    shoe_id = 1
    store_id = 1
    for link in links_list:
        response = requests.get(link, headers=headers)
        soup = BeautifulSoup(response.text, 'html.parser')

        header = soup.find_all("h2", class_ = "css-1dakgl7 exiqw3m0")
        retail_div = header[1].find_next_sibling("div")

        pattern = r"\d+\.?\d+"
        match = re.search(pattern, retail_div.get_text(strip = True))
        if match:
            retail_price = match.group(0)

        store_div = retail_div.find_next_sibling("div")
        while(store_div):
            link_a = store_div.find("a")
            if link_a and link_a.has_attr('href'):
                link = link_a['href']
                pattern = r'(www\.[^%\/]+)'
                match = re.search(pattern, link)
                main_link = "https://" + match.group(0)
                

            text = store_div.get_text()
            pattern = r"^(?P<store>.*?)\$(?P<discounted_price>\d+\.\d{2})"
            match = re.search(pattern, text)

            if match:
                name = match["store"]
                price = float(match["discounted_price"])

                # Ensuring unique stores getting saved
                if name not in seen_store_names:
                    seen_store_names.add(name)
                    store_name_to_id_map[name] = store_id
                    store.append({
                        "store_id": store_id if store_id else None,
                        "name": name if name else None,
                        "main_link": main_link if main_link else None
                    })
                    store_id += 1

                # Scraping for Shoe_listing data
                if {
                    "store_id": store_name_to_id_map[name] if store_name_to_id_map[name] else None,
                    "shoe_id": shoe_id if shoe_id else None,
                    "price": price if price else None,
                    "link": link if link else None
                } not in shoe_listing:
                    shoe_listing.append({
                        "store_id": store_name_to_id_map[name] if store_name_to_id_map[name] else None,
                        "shoe_id": shoe_id if shoe_id else None,
                        "price": price if price else None,
                        "link": link if link else None
                    })

                print(f"store_id: {store_name_to_id_map[name]}, name: {name}, main_link: {main_link}, price: {price}, link: {link}")

            store_div = store_div.find_next_sibling("div")

        shoe_id += 1

    json_output = json.dumps(store, indent=4)
    with open('Data Scraping/data/Store.json', 'w') as f:
        f.write(json_output)

    json_output = json.dumps(shoe_listing, indent=4)
    with open('Data Scraping/data/Shoe_listing.json', 'w') as f:
        f.write(json_output)

except FileNotFoundError:
    print(f"Error: The file '{file_name}' was not found.")
except json.JSONDecodeError:
    print(f"Error: The file '{file_name}' is not a valid JSON file.")
except Exception as e:
    print(f"An unexpected error occurred: {e}")