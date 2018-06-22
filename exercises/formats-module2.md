## Exercise 1 – Exploring a genomic region in human
(a) Go to the region from 31,937,000 to 32,633,000 bp on human chromosome 13. On which cytogenetic band is this region located? How many contigs make up this portion of the assembly (contigs are contiguous stretches of DNA sequence that have been assembled solely based on direct sequencing information)?
> la región se ubica en la banda citogenética q13.1
> 8 contiguos se forman parte.

(b) Zoom in on the BRCA2 gene.
> Ok.

(c) Configure this page to turn on the Tilepath track in this view. What is this
track? Are there any Tilepath clones that contain the complete BRCA2 gene?
> Tilepath are BAC clones upon which the current genomic assembly was based. Colours indicate a finished sequence (gold clones), phase 1 sequencing (dark pink), phase 0 (light pink) or other (grey). Clones that have been fluorescence in situ hybridisation (FISH) mapped are marked with a black triangle in the top left corner. If a clone is shown in outline, the mapping to the genome is problematic and the true length may not be displayed.
> No hay ningun tilepath que contenga por completo el BRCA2. Está casi todo en RP11-37E23, pero entra un poco en RP11-298P3.

(d) Create a Share link for this display. Email it to your neighbour. Open the link they sent you and compare. If there are differences, can you work out why.
> http://apr2018.archive.ensembl.org/Homo_sapiens/Share/29ec24b39171dba0198eec4c4dee4faf?redirect=no;mobileredirect=no
> Las principales diferencias surgen por la región seleccionada

(e) Export the genomic sequence of the region you are looking at in FASTA format.
> http://www.ensembl.org/Homo_sapiens/Export/Output/Location?db=core;flank3_display=0;flank5_display=0;output=fasta;r=13:32310277-32403483;strand=feature;intron=yes;utr3=yes;coding=yes;utr5=yes;peptide=yes;cdna=yes;exon=yes;genomic=unmasked;_format=Text

(f) Turn off all tracks you added to the Region in detail page.
> No lo cambio para que el link compartido mantenga la configuración.

## Exercise 2 – Exploring assembly exceptions in human
(a) Go to the region 21:32630000-32870000 in human. What is the red highlighted region?
> La región roja es Chromosome CHR_HSCHR21_3_CTG1_1: 32,769,079-32,843,731
> Genomic sequence that differs from the genomic DNA on the primary assembly. 

(b) Can you see the assembly exceptions in the chromosome view? How many regions with assembly exceptions are there on chromosome 21?
> Si. 7 regiones.

(c) Can you compare this assembly exception with the reference? What is different between this assembly exception and the version on the primary assembly?
> Hay una región extra en el fix, como se puede ver en https://imgur.com/a/WFxL5g8 (arriba el fix)

## Exercise 3 – Exploring the human MYH9 gene
(a) Find the human MYH9 (myosin, heavy chain 9, non-muscle) gene, and go
to the Gene tab.
i) On which chromosome and which strand of the genome is this gene located?
> Cromosoma 22
> reseverse strand

ii) How many transcripts (splice variants) are there and how many are protein coding?
> 11 transcriptos
> 3 codifican proteinas

iii) What is the longest transcript, and how long is the protein it encodes?
> El transcripto más largo es MYH9-201 y codifica una proteina de 1960 aminoacidos

iv) Which transcript is the best quality?
> El transcripto de mejor calidad es MYH9-201 por ser TSL:1 y tener CCDS asociado (collaborative effort to identify a core set of human and mouse protein coding regions that are consistently annotated and of high quality)

(b) Click on Phenotype at the left side of the page. Are there any diseases associated with this gene, according to OMIM (Online Mendelian Inheritance in Man)?
> Si, EPSTEIN SYNDROME, DEAFNESS AUTOSOMAL DOMINANT 17 y FECHTNER SYNDROME

(c) What are some functions of MYH9 according to the Gene Ontology consortium? Have a look at the GO pages for this gene.
> microfilament motor activity
> nucleotide binding
> RNA binding
> motor activity
> microtubule motor activity
> actin binding
> protein binding
> ATP binding
> calmodulin binding
> microtubule binding
> ATPase activity
> protein domain specific binding
> actin-dependent ATPase activity
> protein homodimerization activity
> protein membrane anchor
> ADP binding
> cadherin binding
> actin filament binding

(d) In the transcript table, click on the transcript ID for MYH9-001, and go to the Transcript tab.
i) How many exons does it have?
> 41 exones

ii) Are any of the exons completely or partially untranslated?
> El exon 1 es UTR
> El exon 2 y el exon 41 es parcialmente UTR

iii) Is there an associated sequence in UniProtKB/Swiss-Prot? Have a look at the General identifiers for this transcript.
> Si, P35579

(e) Are there microarray (oligo) probes that can be used to monitor ENST00000216181 expression?
> Si, alrededor de 28.

## Exercise 4 – Finding a gene associated with a phenotype
Phenylketonuria is a genetic disorder caused by an inability to metabolise phenylalanine in any body tissue. This results in an accumulation of phenylalanine causing seizures and mental retardation.
(a) Search for phenylketonuria from the Ensembl homepage. What gene is associated with this disorder?
> El gen (PAH: phenylalanine hydroxylase)[https://www.ncbi.nlm.nih.gov/gene/5053].

(b) How many protein coding transcripts does this gene have? View all of these in the transcript comparison view.
> 6 transcriptos

(c) What is the MIM disease identifier for this gene?
> MIM (261600)[http://www.omim.org/261600]