import requests

url = "https://ccb-microbe.cs.uni-saarland.de/plsdb2025/api/filter_taxonomy"
params = {
    "TAXONOMY_genus": "Xanthomonas"
}

response = requests.get(url, params=params)

# Check if request was successful
if response.status_code == 200:
    data = response.json()  # If the API returns JSON
    
    with open('accessions.txt', 'w') as f:
        f.write('\n'.join(data['NUCCORE_ACC']))
else:
    print("Error:", response.status_code, response.text)
