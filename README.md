# Asp-parasiticus_alkane_multiomics

## What this repo contains
Code and data for the transcriptomic and secretomic analysis of Aspergillus parasiticus MM36 grown with alkanes. This repository provides code and data for the analysis presented in the manuscript "**Multi-omics insights into the response of *Aspergillus parasiticus* to long-chain alkanes in relation to polyethylene modification**" (doi: [10.1016/j.envpol.2025.126386](https://doi.org/10.1016/j.envpol.2025.126386)).

- Code is in quarto documents (.qmd) or zipped rendered html.
- Proteomic raw data, metadata and results are in PRIDE database with accession [PXD058271](https://www.ebi.ac.uk/pride/archive/projects/PXD058271)
- Transcriptomic raw data, metadata and results are in GEO database with accession [GSE282836](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE282836)

## How to replicate the analysis
Download the proteomic data running the download_MS_files.sh script and then the MS.qmd file with the R code.  
Download the RNAseq data from the GEO database (they have changed names to files but it's not hard to map, maybe I do it) and run the RNAseq.qmd code. 

## How to browse the results
To easily browse the results without replicating the analysis use the "results/merged_protein_results.csv.gz" file.  
To filter for proteins identified in the proteomic analysis use column *MS_status*, for transcriptomic use *RS_status*.  
The functional annotations were parsed with functions from my [ProtAnnoScripts](https://github.com/Roman-Si/ProtAnnoScripts) repo.

### Uniprot or Mycocosm accessions
The analysis used the sequenced genome of the MM36 isolate that we have deposited in GenBank with accession [JAWDVE000000000](https://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=search&db=nucleotide&doptcmdl=genbank&term=JAWDVE000000000). However sometimes using the UniProt or Mycocosm reference proteome of a species is preffered so I included the accession of the BLAST Reciprocal Best Hit (RBBH) for each protein in columns *uniprot_rbbh* and *mycocosm_rbbh* (after filtering for 30% identity and 70% coverage as well). These accessions are from the proteome of *Aspergillus parasiticus* CBS 117618 with accession UP000326532 and Asppar1 in the two databases respectively.  
	

