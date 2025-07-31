import json
import requests
import re
import datetime
from bs4 import BeautifulSoup

def get_reviews(index, type, result, shoe_id, critic_id, review_id):
    overall_header = soup.select('h3', id = 'support')
    overall_div = overall_header[index].find_next_sibling('div') if overall_header else None

    # user_overall has unique structure
    if type == "user_overall":
        temp_div = overall_div.find_next_sibling('div') if overall_div else None
    else:
        temp_div = overall_div.find('div') if overall_div else None
        temp_div = temp_div.find_next_sibling('div') if temp_div else None

    temp_div = temp_div.find_next_sibling('div') if temp_div else None
    review_div = temp_div.find_next_sibling('div') if temp_div else None
    
    while review_div:
        if review_div:
            link = review_div.find('a')
            if link and link.has_attr('href'):
                pattern = r'critic'
                match = re.search(pattern, link['href'])
                review_link = "https://www.thehoopsgeek.com" + link['href']

                # Scraping for critics_link_data to be used later
                if review_link not in seen_links and "shoe_id" not in review_link:
                    seen_links.add(review_link)
                    link_map[review_link] = critic_id
                    profile_links.append({
                            "critic_id" : critic_id,
                            "link" : review_link,
                            "is_expert" : 1 if match else 0
                        })
                    critic_id += 1

            profile_text = review_div.get_text(strip=True)
            # Extract rating, name, date, and description using regex
            pattern = r"(?P<rating>\d+\.\d)(?P<name>.*?)(?P<date>[A-Z][a-z]{2,9} \d{1,2}, \d{4})(?P<desc>.*)"
            pattern_outdoor = r"(?P<rating>no|fair|good)(?P<name>[A-Za-z ]*?)(?P<date>[A-Z][a-z]+ \d{1,2}, \d{4})(?P<desc>.*)"
            pattern_width = r"(?P<rating>very narrow|slightly narrow|regularly wide|slightly wide|very wide)(?P<name>[A-Za-z ]*?)(?P<date>[A-Z][a-z]+ \d{1,2}, \d{4})(?P<desc>.*)"
            pattern_size = r"(?P<rating>runs small|½ size small|true to size|½ size large|runs large)(?P<name>[A-Za-z ]*?)(?P<date>[A-Z][a-z]+ \d{1,2}, \d{4})(?P<desc>.*)"
            
            match = re.search(pattern, profile_text)
            match_outdoor = re.search(pattern_outdoor, profile_text)
            match_width = re.search(pattern_width, profile_text)
            match_size = re.search(pattern_size, profile_text)
            if match:
                rating = float(match.group("rating"))
                date = match.group("date")
                description = match.group("desc").strip()[:-12]

            # Unique transformation to ensure rating is a float by assigning numbers based on the string
            elif match_outdoor:
                rating = match_outdoor.group("rating").strip()
                date = match_outdoor.group("date")
                description = match_outdoor.group("desc").strip()[:-12]
                if rating == "no":
                    rating = 0.0
                elif rating == "fair":
                    rating = 50.0
                elif rating == "good":
                    rating = 100.0
                else:
                    print(f"Unexpected outdoor rating: {rating}")
                    continue

            elif match_width:
                rating = match_width.group("rating").strip()
                date = match_width.group("date")
                description = match_width.group("desc").strip()[:-12]
                if rating == "very narrow":
                    rating = 1
                elif rating == "slightly narrow":
                    rating = 2
                elif rating == "regularly wide":
                    rating = 3
                elif rating == "slightly wide":
                    rating = 4
                elif rating == "very wide":
                    rating = 5
                else:
                    print(f"Unexpected width rating: {rating}")
                    continue

            elif match_size:
                rating = match_size.group("rating").strip()
                date = match_size.group("date")
                description = match_size.group("desc").strip()[:-12]
                if rating == "runs small":
                    rating = 1
                elif rating == "½ size small":
                    rating = 2
                elif rating == "true to size":
                    rating = 3
                elif rating == "½ size large":
                    rating = 4
                elif rating == "runs large":
                    rating = 5
                else:
                    print(f"Unexpected size rating: {rating}")
                    continue
            
            #Scraping for Review data
            if match or match_outdoor or match_size or match_width:
                date_obj = datetime.datetime.strptime(date, "%B %d, %Y")
                sql_date_string = date_obj.strftime("%Y-%m-%d")
                result.append({
                    "review_id": review_id,
                    "shoe_id": shoe_id,
                    "critic_id": link_map[review_link],
                    "rating": rating,
                    "date": sql_date_string,
                    "type": type,
                    "description": description if description != "User didn't add a summary." else None
                })
                review_id += 1
        review_div = review_div.find_next_sibling('div')
    return result, critic_id, review_id
        


# main program
file_name = 'Data Scraping/data/shoe_links.json'
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}

result = []
profile_links = []
seen_links = set()
link_map = {}

with open(file_name, 'r') as f:
        data = json.load(f)

links_list = data['shoe_links']
response = requests.get("https://www.thehoopsgeek.com/shoe-reviews/critic/?id=48", headers=headers)

shoe_id = 1
critic_id = 1
review_id = 1
for link in links_list:
    response = requests.get(link, headers=headers)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        
        result, critic_id, review_id = get_reviews(1, "expert_overall", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(2, "user_overall", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(3, "traction", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(4, "cushion", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(5, "materials", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(6, "support", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(7, "fit", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(8, "durability", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(9, "outdoor", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(10, "width", result, shoe_id, critic_id, review_id)
        result, critic_id, review_id = get_reviews(11, "size", result, shoe_id, critic_id, review_id)
        
        shoe_id += 1
    else:
        print(f"Failed to retrieve {link}")


    json_output = json.dumps(result, indent=4)
    with open('Data Scraping/data/Review.json', 'w') as f:
        f.write(json_output)  

    json_output = json.dumps(profile_links, indent=4)
    with open('Data Scraping/data/critics_link_data.json', 'w') as f:
        f.write(json_output)  