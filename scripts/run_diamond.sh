diamond makedb --in 'data/proteins.faa' --db 'diamond_db/proteins' --threads 12

diamond blastp \
	--query 'data/proteins.faa' \
	--db 'diamond_db/proteins' \
	--out 'output/diamond_out.tsv' \
	--outfmt  6 qseqid sseqid pident length qlen slen qcovhsp evalue bitscore \
	--evalue  '1e-5' \
	--query-cover 50 \
	--id      30 \
	--threads 12 \
	--max-target-seqs 500 \
	--more-sensitive \
	--no-self-hits
