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
            pattern = r"(Official Retail Price: \$\d+\.\d+)"
            match = re.search(pattern, full_text)
            if match:
                price = float(match.group(0)[24:])

        # Get description
        heading_tag = soup.find('h2', class_='css-1dakgl7 exiqw3m0')
        if heading_tag:
            description_div = heading_tag.find_next_sibling('div')
            if description_div:
                description_text = description_div.get_text(strip=True)

        # Get expert rating
        heading_tag = soup.find('h3', id='overall')
        if heading_tag:
            description_div = heading_tag.find_next_sibling('div')
            if description_div:
                span_tag = description_div.find('span')
                expert_rating = float(span_tag.get_text(strip=True))

        # Get traction rating
        traction_heading = soup.find('div', class_='rating_bar')
        if traction_heading:
            temp_div = traction_heading.find('div')
            traction_div = temp_div.find_next_sibling('div')
            if traction_div.get_text(strip=True) != "NA":
                traction = float(traction_div.get_text(strip=True))
            
        other_heading = traction_heading.find_next_siblings('div', class_='rating_bar')
        if other_heading:
            # Get cushion rating
            temp_div = other_heading[0].find('div')
            cushion_div = temp_div.find_next_sibling('div')
            if cushion_div.get_text(strip=True) != "NA":
                cushion = float(cushion_div.get_text(strip=True))

            # Get materials rating
            temp_div = other_heading[1].find('div')
            materials_div = temp_div.find_next_sibling('div')
            if materials_div.get_text(strip=True) != "NA":
                materials = float(materials_div.get_text(strip=True))

            # Get support rating
            temp_div = other_heading[2].find('div')
            support_div = temp_div.find_next_sibling('div')
            if support_div.get_text(strip=True) != "NA":
                support = float(support_div.get_text(strip=True))

            # Get fit rating
            temp_div = other_heading[3].find('div')
            fit_div = temp_div.find_next_sibling('div')
            if fit_div.get_text(strip=True) != "NA":
                fit = float(fit_div.get_text(strip=True))

            # Get outdoor rating
            temp_div = other_heading[4].find('div')
            outdoor_div = temp_div.find_next_sibling('div')
            if outdoor_div.get_text(strip=True) != "NA":
                outdoor = float(outdoor_div.get_text(strip=True)[:-1] ) 

        
        # Get width 
        heading_width = soup.find('h3', id='Width')
        if heading_width:
            width_div = heading_width.find_next_sibling('div')
            if width_div:
                temp_div = width_div.find('div')
                width = temp_div.find('div')
                total = 0
                count = 0
                for i in range(1, 6):
                    width_data = width.find_all('div')
                    width_count = int(width_data[4].get_text(strip=True))
                    total += width_count * i
                    count += width_count
                    width = width.find_next_sibling('div')
                if total > 0:
                    average = total / count
                    if(average > 4):
                        width = "very wide"
                    elif(average > 3):
                        width = "slightly wide"
                    elif(average > 2):
                        width = "regular"
                    elif(average > 1):
                        width = "slightly narrow"
                    else:
                        width = "very narrow"

        # Get size
        heading_size = soup.find('h3', id='Size')
        if heading_size:
            size_div = heading_size.find_next_sibling('div')
            if size_div:
                temp_div = size_div.find('div')
                size = temp_div.find('div')
                total = 0
                count = 0
                for i in range(1, 6):
                    size_data = size.find_all('div')
                    size_count = int(size_data[4].get_text(strip=True))
                    total += size_count * i
                    count += size_count
                    size = size.find_next_sibling('div')
                if total > 0:
                    average = total / count
                    if(average > 4):
                        size = "very long"
                    elif(average > 3):
                        size = "slightly long"
                    elif(average > 2):
                        size = "true to size"
                    elif(average > 1):
                        size = "slightly small"
                    else:
                        size = "very small"


        result.append({
            "shoe_id": id,
            "name": shoe_name if shoe_name else 'N/A',
            "brand": brand if brand else 'N/A',
            "release_date": sql_date_string if 'release_date' in locals() else 'N/A',
            "shoe_type": shoe_type if 'shoe_type' in locals() else 'N/A',
            "description": description_text if 'description_text' in locals() else 'N/A',
            "price": price if 'price' in locals() else 'N/A',
            "expert_rating": expert_rating if 'expert_rating' in locals() else 'N/A',
            "traction_rating": traction if 'traction' in locals() else 'N/A',
            "cushion_rating": cushion if 'cushion' in locals() else 'N/A',
            "materials_rating": materials if 'materials' in locals() else 'N/A',
            "support_rating": support if 'support' in locals() else 'N/A',
            "fit_rating": fit if 'fit' in locals() else 'N/A',
            "outdoor_rating": outdoor if 'outdoor' in locals() else 'N/A',
            "size": size if 'size' in locals() else 'N/A',
            "width": width if 'width' in locals() else 'N/A'
        })
        id += 1


    json_output = json.dumps(result, indent=4)
    with open('Data Scraping/data/shoe_data.json', 'w') as f:
        f.write(json_output)


        
except FileNotFoundError:
    print(f"❌ Error: The file '{file_name}' was not found.")
except json.JSONDecodeError:
    print(f"❌ Error: The file '{file_name}' is not a valid JSON file.")
except Exception as e:
    print(f"An unexpected error occurred: {e}")