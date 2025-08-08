from invoke import task
from concurrent.futures import ThreadPoolExecutor
import subprocess

def run_parallel_py(filename):
    subprocess.run(["python", f"{filename}.py"], check=True)

@task
def full_pipeline(c):
    scrape_path = 'Data" "Scraping/src/'
    storing_path = 'Data" "Warehouse/src/'

    c.run(f"python {scrape_path}link_scrape.py")
    print("link scrape done")

    c.run(f"python {scrape_path}shoe_scrape.py")
    c.run(f"python {scrape_path}colorway_scrape.py")
    c.run(f"python {scrape_path}store_scrape.py")
    c.run(f"python {scrape_path}review_scrape.py")
    
    print("shoe, colorway, store, review scrape done")

    c.run(f"python {scrape_path}critic_scrape.py")
    print("critic scrape done")

    c.run(f"python {scrape_path}json_csv_converter.py")
    print("json to csv convert done")

    c.run(f"python {storing_path}etl.py")
    print("csv to db done")

    c.run(f"python {storing_path}storing.py")
    print("db to warehouse done")

@task 
def scrape(c):
    scrape_path = 'Data" "Scraping/src/'
    c.run(f"python {scrape_path}link_scrape.py")

    with ThreadPoolExecutor() as executor:
        executor.submit(run_parallel_py, scrape_path + "shoe_scrape")
        executor.submit(run_parallel_py, scrape_path + "colorway_scrape")
        executor.submit(run_parallel_py, scrape_path + "store_scrape")
        executor.submit(run_parallel_py, scrape_path + "review_scrape")

    c.run(f"python {scrape_path}critic_scrape.py")
    c.run(f"python {scrape_path}json_csv_converter.py")