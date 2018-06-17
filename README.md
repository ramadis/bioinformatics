# BRCA1 bioinformatic analysis

Bioinformatic project for the namesake subject at ITBA. We chose as our gene to analyze the BRCA1 gene highly related with breast cancer development.

### Deliverables

We included in this repository a `report.pdf` which includes result analyisis, development description and answers for the theoretic exercises (Such as 2b and 3 exercises). 

### Requirements

* Ruby 2.0.0
* Bundler
* EMBOSS
* Prosite database

### Set up
The project was developed in Ruby. We used `Bundler` to install the required gems to run the project. The only gem we use in the development was `Bioruby` as recommended by the professor. So, to install the project we only have to install the required gem.

```sh
bundle install --path ./vendor/bundle
```

### Excersise 1
We have to read a nucleotids sequence from a mRNA from the BRCA1 gene in `GenBank` format. Then, translate this sequence to the possible amino acids sequences (given the 6 possible reading frames) and finally writing the output to `FASTA` files.

The script `Ex1.rb` given a GenBank gene file (`BRCA1.gb` in this case) generates 6 files with the possible amino acid sequences with the names `<mNRA_ID>$<FRAME_NUM>.fas`.

```
bundle exec ruby Ex1.rb BRCA1.gb
```

### Excersise 2
We have to run a BLAST for each one of the 6 possible amino acids sequences generated in the last exercise.

The script `Ex2.rb` given a mNRA id (`NM_007294` in this case) generate 6 files with the results of the BLAST execution. It reads the files generated in the previous exercise and generate a file `<mNRA_ID>$<FRAME_NUM>.blas` with the report hits for each one.

```
bundle exec ruby Ex2.rb NM_007294
```

### Excersise 5
We developed a script that given the nucleotids sequence from a `GenBank` file, will return the possible amino acid sequences for each ORF.

The script `Ex5.rb` given a GenBank gene file (`BRCA1.gb` in this case) will generate an output file (input) with all the possible amino acid sequeneces for each ORF. Its inputs are the option `--orf`, the `GenBank` file and the output file.

```
bundle exec ruby Ex5.rb --orf BRCA1.gb BRCA1.orf
```

On the the other hand, the same script also generate a domain analyisis for the given amino acid sequences, in a `FASTA` file. Its inputs are `--prosite`, the `FASTA` file, and the output file. To run this script you will need [the prosite database](ftp://ftp.expasy.org/databases/prosite/) downloaded in the root folder within a folder named `prosite`.

```
bundle exec ruby Ex5.rb --prosite NM_007294\$1.fas analysis.prosite
```

### Notes

The code is developed to be non-dependant of the analyzed gene, making it a useful generic tool.

To install EMBOSS download [the tar file](ftp://emboss.open-bio.org/pub/EMBOSS/EMBOSS-6.6.0.tar.gz), unzip it and then run:

```
./configure --without-x
make
make install
```

### Developers

* Ramiro Olivera Fedi [rolivera@itba.edu.ar](mailto:rolivera@itba.edu.ar)
* Julian Antonielli [jantonielli@itba.edu.ar](mailto:jantonielli@itba.edu.ar)