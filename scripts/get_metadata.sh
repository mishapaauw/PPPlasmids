cat accessions.txt \
| epost -db nuccore \
| esummary \
| xtract -pattern DocumentSummary \
  -element AccessionVersion Organism TaxId Slen \
> metadata.tsv
