## PPPlasmids

In this project I will analyse plasmids of plant pathogenic bacteria. I will try to group them together based on 'weighted gene repertoire relatedness': wGRR. 

## Data download

In summary, we will use PLSDB and ncbi-datasets to download a set of plasmids of interest. In the first experiment, we queried PLSDB with just genus `Xanthomonas`. This is hardcoded in the `get_taxonomy.py` script. For the broader experiment accross differt plant pathogens, we will make a PLSDB query with the following taxa:

- _Xylella_ (61 plasmids)
- _Xanthomonas_ (489 plasmids)
- _Clavibacter_ (49 plasmids)
- _Pseudomonas syringae_ (114 plasmids)
- _Erwinia_ (152 plasmids)
- _Pectobacterium_ (23 plasmids)
- _Dickeya_ (5 plasmids)
- _Stenotrophomonas_ (19 plasmids)

```bash
# Get taxonomy list
python scripts/get_taxonomy.py 

# Download protein files of each plasmid accession
bash scripts/download_accessions.sh
```

## Run diamond blastp and analyze results

```bash
# Run self diamond search
bash scripts/run_diamond.sh

# Inspect data with Rmd file
# interactive session with calculate_wGRR.Rmd
```

## Follow up:

```bash
# Create a file of accessions to follow up on
$ cat selected_accessions.txt 
NZ_CP062258.2
NZ_CP024080.1
NZ_CP066345.1
NZ_CP083578.1
NZ_CP018853.1
NZ_CP018857.1
NZ_CP075328.1
NC_020798.1

# download genbank files of selected accessions list
bash scripts/download_selected_accessions.sh 

# create alignment
clinker data/*.gbk -p output/component8.html
```

## TODO

- Update scripts such that it creates an experiment-level output
- Separate R code in wGRR calculation and visualisation

## Requirements

- Python 3.9 with package `requests`
- `ncbi-datasets`, `efetch`, and `entrez-direct`
- `diamond`

## References

> de Sousa, J. A. M., Fillol-Salom, A., Penadés, J. R., & Rocha, E. P. (2023). Identification and characterization of thousands of bacteriophage satellites across bacteria. Nucleic acids research, 51(6), 2759-277

