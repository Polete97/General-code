#! /bin/bash
# Genome folder constains fasta file of genome
#fatsa and fq files must share same name for loopt o work
for individual in *.fasta; do
    name=$(basename individual)
    mkdir $name
    bismark_genome_preparation ./$name
    bismark --genome ./$name -1 $name"_1".fq -2 $name"_2".fq
    deduplicate_bismark --bam $name"bismark_bt2.bam"
    bismark_methylation_extractor $name"deduplicated_bismark_bt2.bam"  --ignore 5 --ignore_r2 <int> 5
done

bismark2report 


