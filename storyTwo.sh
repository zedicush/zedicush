#!/usr/bin/bash
# workshop genomic stage zero
function bashStoryTwo {
echo "this is the steps for story two"
if [! -f compare]; then 
mkdir compare
fi
wget -P compare https://www.bioinformatics.babraham.ac.uk/training/Introduction%20to%20Unix/unix_intro_data.tar.gz 
gunzip compare/unix_intro_data.tar.gz 
tar -xf compare/unix_intro_data.tar -C compare/
cd compare/seqmonk_genomes/Saccharomyces cerevisiae/EF4
mv compare/seqmonk_genomes/'Saccharomyces cerevisiae'/ compare/seqmonk_genomes/Saccharomyces_cerevisiae/
cat  compare/seqmonk_genomes/Saccharomyces_cerevisiae/EF4/Mito.dat
cp compare/seqmonk_genomes/Saccharomyces_cerevisiae/EF4/Mito.dat compare/
sed -i "s/Mito/Mitochondrion/" compare/Mito.dat 
mv compare/Mito.dat compare/Mitochondrion.txt
echo "number of lines in one file"
wc -l compare/FastQ_Data/lane8_DD_P4_TTAGGC_L008_R1.fastq.gz
echo "number of lines in all files"
wc -l compare/FastQ_Data/lane8* > compare/FastQ_Data/totalNumbersOfLines.txt
cat compare/FastQ_Data/totalNumbersOfLines.txt
}
bashStoryTwo
