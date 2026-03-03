## PPPlasmids

In this project I will analyse plasmids of plant pathogenic bacteria. I will try to group them together based on 'weighted gene repertoire relatedness': wGRR. 

## Data download

In summary, we will use PLSDB and ncbi-datasets to download all Xanthomonas plasmids. `scripts/get_taxonomy.py` creates a list of ncbi accessions, which is then downloaded with `script/download_taxonomies.sh`

## Requirements

- Python 3.9 with package `requests`
- `ncbi-datasets` and `efetch`
