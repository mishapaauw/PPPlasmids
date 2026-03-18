diamond makedb --in 'data/T3E_unique.reformat.faa' --db 'diamond_db/T3Es' --threads 12

diamond blastp \
	--query '/scratch/misha/plsdb/plsdb_clean.fasta' \
	--db 'diamond_db/T3Es' \
	--out 'data_intermediate/T3E_hits.tsv' \
	--outfmt  6 qseqid sseqid pident length qlen slen qcovhsp evalue bitscore \
	--evalue  '1e-5' \
	--query-cover 80 \
	--id      80 \
	--threads 12 \
	--max-target-seqs 1 \
	--more-sensitive \
	--no-self-hits

