# Count the number of coding sequences based on the downloaded protein file
# Parse protein headers down to accession name, then count occurence of each accession name.

grep ">" data/proteins.faa | \
	cut -f 2 -d "|" | \
	cut -f 1 -d "p" | \
	sed 's/_\(\t\|$\)/\1/g' | \
	sort | \
	uniq -c | \
	column -t > data/CDS_counts.tsv

