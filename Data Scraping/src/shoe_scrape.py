import json
import requests
import re
import datetime
from bs4 import BeautifulSoup


# Scraper to get all shoe data
file_name = 'Data Scraping/data/shoe_links.json'
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}

result = []

try:
    with open(file_name, 'r') as f:
        data = json.load(f)

    total_count = data['total_links_found']
    links_list = data['shoe_links']

    id = 1
    for link in links_list:
        response = requests.get(link, headers=headers)
        soup = BeautifulSoup(response.text, 'html.parser')

        # Get shoe name
        shoe_name = soup.select('h1')
        if shoe_name:
            shoe_name = shoe_name[0].text.strip()
        else:
            shoe_name = None

        test = soup.find('div', class_='css-17ajkla')
        test = test.find_next_sibling('div')
        test = test.find_all('a')
        player = test[1].get_text(strip=True)
        print(player)
        pattern = r"\$\d+\.?\d+"
        price = re.search(pattern, player)
        if(player == shoe_name or price):
            player = None
        

        # Get shoe brand
        if shoe_name.split()[0] == "New" or shoe_name.split()[0] == "Under":
            brand = shoe_name.split()[0] + " " + shoe_name.split()[1]
        elif shoe_name.split()[0] == "Air":
            brand = shoe_name.split()[1]
        else:
            brand = shoe_name.split()[0]

        
        div_tag = soup.find('div')
        if div_tag:
            # Get release date
            full_text = div_tag.get_text() 
            match = re.search(r"\d{1,2}/\d{4}", full_text)
            if match:
                release_date = match.group(0)
            
            date_obj = datetime.datetime.strptime(release_date, "%m/%Y")
            sql_date_string = date_obj.strftime("%Y-%m-%d")

            # Get shoe type
            pattern = r"(Low Top|High Top|Mid Top)"
            match = re.search(pattern, full_text)
            if match:
                shoe_type = match.group(0)
                
            # Get shoe price
            pattern = r"(Official Retail Price: \$\d+\.?\d+)"
            match = re.search(pattern, full_text)
            if match:
                price = float(match.group(0)[24:])

        # Get description
        heading_tag = soup.find('h2', class_='css-1dakgl7 exiqw3m0')
        if heading_tag:
            description_div = heading_tag.find_next_sibling('div')
            if description_div:
                description_text = description_div.get_text(strip=True)

        
        print(id, shoe_name, price)
        result.append({
            "shoe_id": id,
            "name": shoe_name if shoe_name else "",
            "brand": brand if brand else "",
            "player": player if player else "",
            "release_date": sql_date_string if 'release_date' in locals() else "",
            "description": description_text if 'description_text' in locals() else "",
            "shoe_type": shoe_type if 'shoe_type' in locals() else "",
            "retail_price": price if price else None,
        })
        id += 1


        json_output = json.dumps(result, indent=4)
        with open('Data Scraping/data/Shoe.json', 'w') as f:
            f.write(json_output)


        
except FileNotFoundError:
    print(f"Error: The file '{file_name}' was not found.")
except json.JSONDecodeError:
    print(f"Error: The file '{file_name}' is not a valid JSON file.")
except Exception as e:
    print(f"An unexpected error occurred: {e}")