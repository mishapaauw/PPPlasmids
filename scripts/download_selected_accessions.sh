while read acc; do
  efetch -db nuccore -id "$acc" -format genbank > "data/${acc}.gbk"
done < selected_accessions.txt
