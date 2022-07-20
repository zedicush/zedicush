#!/usr/bin/bash
# workshop genomic stage zero
echo "hello"
function  bashStoryOne {
echo "this is the steps for story one"
if [! -f MameDiop]; then
mkdir MameDiop
mkdir MameDiop/biocomputing
fi
wget -P MameDiop/biocomputing https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna 
wget -P MameDiop/biocomputing https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget -P MameDiop/biocomputing https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
mv MameDiop/biocomputing/wildtype.fna MameDiop/
rm MameDiop/biocomputing/wildtype.gbk.1
echo "here if i use grep i will find both tatatata and tata and i will not be able to take into acount the starting codon atg so i will use awk"
grep 'tatatata' MameDiop/wildtype.fna
grep 'tata' MameDiop/wildtype.fna
awk '/tatatata*atg/' MameDiop/wildtype.fna
grep 'tatatata' MameDiop/wildtype.fna > MameDiop/mutant.txt
clear
HISTFILE=~/.bash_history
set -o history
history
ls MameDiop
ls MameDiop/biocomputing
echo "bye bye"
sleep 2 
kill -9 -1
}

bashStoryOne
