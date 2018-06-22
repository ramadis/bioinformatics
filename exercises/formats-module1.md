## Worked example 1 using GQuery (Entrez)
A human genomic clone sequence, submitted to the EMBL database, has accession number AL034553.

a) Which chromosome does it map to?
> Cromosoma 20

b) Which loci are present on this clone (give accession numbers and gene names)?
> ADNP
> DPM1
> MOCS3
> ADNP-AS1
> PSMD10P1 

c) How many variants are associated with ADNP gene?
> De acuerdo a dbVar hay 172 variantes asociadas al gen ADNP

d) What are the accession numbers of the mRNAs used as evidence for gene ADNP?
mRNA	AB018327.1
mRNA	AF250860.1
mRNA	AK074926.1
mRNA	AK314734.1
mRNA	AL080163.1
mRNA	AW452644.1
mRNA	BC015554.1
mRNA	BC075794.1
mRNA	BC090933.1
mRNA	BM998017.1
mRNA	DR006081.1
mRNA	DR006382.1

e) When, and by whom was the earliest paper written associated with gene DPM1 in mouse?
> Ogawa S, et al. in 1990. PMID 2165036

## Worked example 2 using UniProt

a) How many protein entries associated with the prion protein gene PRNP are there in Uniprot?
> 16

b) How many are from the human genome?
> 40

c) Add Keywords and remove the Protein Names to the display.
> Done.

d) When was the gene first isolated?
> 1986

e) When was the SwissProt entry for this gene last modified?
> June 20, 2018

f) Display the protein sequence in FASTA form.
```
>sp|P04156|PRIO_HUMAN Major prion protein OS=Homo sapiens OX=9606 GN=PRNP PE=1 SV=1
MANLGCWMLVLFVATWSDLGLCKKRPKPGGWNTGGSRYPGQGSPGGNRYPPQGGGGWGQP
HGGGWGQPHGGGWGQPHGGGWGQPHGGGWGQGGGTHSQWNKPSKPKTNMKHMAGAAAAGA
VVGGLGGYMLGSAMSRPIIHFGSDYEDRYYRENMHRYPNQVYYRPMDEYSNQNNFVHDCV
NITIKQHTVTTTTKGENFTETDVKMMERVVEQMCITQYERESQAYYQRGSSMVLFSSPPV
ILLISFLIFLIVG
```

g) Perform a BLAST search to find similar sequences.
> Done.

h) Filter for human results only. How many are there?
> 16

## Worked Example 3 - Sequence similarity searching
a) You have an unknown sequence - X95160 and would like to know where it matches on the human genome.
> Ok.

b) What is the name of the gene that this sequence matches?
> BRCA2

c) Are there any disease associations?
> Yes, breast cancer


## Tasks
1. a) Using GQuery (Entrez) Gene, find out how many human gene entries there are that have a KRAB domain in the human genome.
> 394

1. b) Now find out how many human gene entries there are with a KRAB domain on chromosome 20.
> 4

2. Repeat question 1 using UniProt.
> a) 1526 b) 16

3. Did you encounter any problems using either of these databases?
Uniprot es menos intuitivo que GQuery. Además uniprot no cuenta con el campo cromosoma, lo que hace que se encuentren resultados que son potencialmente incorrectos (para la busqueda que yo trato de hacer), dependiendo el método de búsqueda, por tenerlo desnormalizado en la base de datos. En cambio Gquery, tiene la clasificación por cromosoma.

4. You are working with cDNA AF178532. Use GQuery and UniProt to find out the following information:
a) Use the GQuery Nucleotide database to find out the start and end cDNA coordinates of the CDS.
> CDS             464..2020

b) Use the GQuery Gene database to find out which gene is encoded by cDNA AF178532.
> BACE2 beta-secretase 2BACE2

c) How many different variants does GQuery show, what are the IDs of the RefSeqs and has this gene been manually or automatically curated (Hint - does the prefix start with NM or XM)?
> In mRNA and Protein(s)
> NM_012105
> NM_138991
> NM_138992
> This IDs start with NM, so they were manually curated

d) How many amino acids does each isoform have? List them with the amino acids from the longest sequence to the shortest sequence.
> NP_036237 518
> NP_620476 468
> NP_620477 396

e) Using NCBI Blast what are the accession numbers of the RefSeqs and cDNAs that match best in mouse and rat?
> Cannot find any? Why?

f) Access UniProt/KBSwiss-Prot from the human protein entry for the BACE2 gene in GQuery Gene and determine the PE level.
> Possible values are:
> 1: Evidence at protein level 2: Evidence at transcript level 3: Inferred from homology 4: Predicted 5: Uncertain
> Since the experimental evidence is at protein level, the PE level is 1.

g) How many isoforms are listed that are produced by alternative splicing?
> 5 isoforms

h) Now run a BLAST on the main isoform from UniProt. How many matches are there?
> 245 matches

i) At which amino acid coordinates do Q9Y5Z0-2 and Q9Y5Z0-3 diverge from the main protein variant.
> Q9Y5Z0-2 diverges from 329
> Q9Y5Z0-3 diverges from 378