import requests

url = "https://ccb-microbe.cs.uni-saarland.de/plsdb2025/api/filter_taxonomy"

genera = ["Xanthomonas", "Clavibacter", "Xylella", "Erwinia", "Pectobacterium", "Dickeya", "Stenotrophomonas"]
species = ["Pseudomonas syringae"]

all_acc = set()

for g in genera:
    params = {"TAXONOMY_genus": g}
    response = requests.get(url, params=params)

    if response.status_code == 200:
        data = response.json()
        all_acc.update(data["NUCCORE_ACC"])
    else:
        print("Error for", g, response.status_code)

for s in species:
    params = {"TAXONOMY_species": s}
    response = requests.get(url, params=params)

    if response.status_code == 200:
        data = response.json()
        all_acc.update(data["NUCCORE_ACC"])
    else:
        print("Error for", s, response.status_code)

with open("accessions.txt", "w") as f:
    f.write("\n".join(sorted(all_acc)))
