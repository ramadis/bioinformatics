# BRCA1 bioinformatic analysis

Bioinformatic project for the namesake subject at ITBA. We chose as our gene to analyze the BRCA1 gene highly related with breast cancer development.

### Deliverables

We included in this repository a `report.pdf` which includes result analyisis, development description and answers for the theoretic exercises (Such as 2b and 3 exercises). 

### Requirements

* Ruby 2.0.0
* Bundler

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

### Notes

The code is developed to be non-dependant of the analyzed gene, making it a useful generic tool.

### Developers

* Ramiro Olivera Fedi [rolivera@itba.edu.ar](mailto:rolivera@itba.edu.ar)
* Julian Antonielli [jantonielli@itba.edu.ar](mailto:jantonielli@itba.edu.ar)