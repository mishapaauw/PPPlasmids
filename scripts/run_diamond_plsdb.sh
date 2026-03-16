diamond blastp \
	--query '/scratch/misha/plsdb/plsdb_mini_clean.fasta' \
	--db 'diamond_db/proteins' \
	--out 'output/plsdb_diamond_out.tsv' \
	--outfmt  6 qseqid sseqid pident length qlen slen qcovhsp evalue bitscore \
	--evalue  '1e-5' \
	--query-cover 50 \
	--id      30 \
	--threads 12 \
	--max-target-seqs 5000 \
	--more-sensitive \
	--no-self-hits

