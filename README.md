## PPPlasmids

In this project I will analyse plasmids of plant pathogenic bacteria. I will try to group them together based on 'weighted gene repertoire relatedness': wGRR. 

## Data download

In summary, we will use PLSDB and ncbi-datasets to download all Xanthomonas plasmids. Right now the Xanthomonas query to PLSDB is hardcoded in the `get_taxonomy.py` script.

```bash
# Get taxonomy list
python scripts/get_taxonomy.py 

# Download protein files of each plasmid accession
bash scripts/download_taxonomies.sh

# Run self diamond search
bash scripts/run_diamond.sh
```
## Requirements

- Python 3.9 with package `requests`
- `ncbi-datasets` and `efetch`
