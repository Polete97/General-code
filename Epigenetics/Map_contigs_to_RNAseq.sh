#!/bin/sh

###input reads

TRANSLIB=TAN

INPUT_R1=SRR6920620.1_1.fastq
INPUT_R2=SRR6920620.1_2.fastq

MINLENGTH=50 #minimus length for trimmomatic length filtering

#load the modules
#module load samtools
#module load bowtie2
#module load java

#trimmomatic length filtering
#java -jar /data/home/btx671/programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE $INPUT_R1 $INPUT_R2 trimmed${INPUT_R1}_paired.fastq trimmed${INPUT_R1}_unpaired.fastq trimmed${INPUT_R2}_paired.fastq trimmed${INPUT_R2}_upaired.fastq ILLUMINACLIP:/data/home/btx671/programs/Trimmomatic-0.39/adapters/TruSeq3-PE-2.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:$MINlENGTH HEADCROP:0
trimmomatic PE $INPUT_R1 $INPUT_R2 trimmed${INPUT_R1}_paired.fastq trimmed${INPUT_R1}_unpaired.fastq trimmed${INPUT_R2}_paired.fastq trimmed${INPUT_R2}_upaired.fastq ILLUMINACLIP:/root/miniconda3/share/trimmomatic/adapters/TruSeq3-PE-2.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:4:15 MINLEN:$MINlENGTH

#create reference
bowtie2-build contigs_tannensis.fasta contigs_tannensis.ref

#bowtie2 map
bowtie2 -q -x contigs_tannensis.ref -1 trimmed${INPUT_R1}_paired.fastq -2 trimmed${INPUT_R2}_paired.fastq|samtools view -bS -> lengthfiltered_allrepeats_${TRANSLIB}_align.bam
#bowtie2 -q -x contigs_RE_Azolla.ref -U ${INPUT_R1}|samtools view -bS -> lengthfiltered_allrepeats_${TRANSLIB}_align.bam


#samtools filter out the unmapped reads
samtools view -h -F 4 -b lengthfiltered_allrepeats_${TRANSLIB}_align.bam > mappedlengthfiltered_allrepeats_${TRANSLIB}_align.bam
samtools sort mappedlengthfiltered_allrepeats_${TRANSLIB}_align.bam -o mappedlengthfiltered_allrepeats_${TRANSLIB}_align_sorted.bam
samtools view mappedlengthfiltered_allrepeats_${TRANSLIB}_align_sorted.bam|cut -f1,3 > mappedlengthfiltered_allrepeats_${TRANSLIB}_align_sorted_cut.txt

#Loop the reads number for each cluster
for i in {1..249}
do
  grep "CL${i}Contig" mappedlengthfiltered_allrepeats_${TRANSLIB}_align_sorted_cut.txt | wc -l >> file${TRANSLIB}_${MINLENGTH}.txt
 done
