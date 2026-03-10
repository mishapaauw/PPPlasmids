cat accessions.txt \
| epost -db nuccore -email m.m.paauw@uva.nl \
| esummary \
| xtract -pattern DocumentSummary \
  -element AccessionVersion Organism TaxId Slen \
> metadata.tsv
