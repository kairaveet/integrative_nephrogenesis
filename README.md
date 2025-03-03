## integrative_nephrogenesis
This repository contains the scripts and code used in the study:
"Bridging the gap of late-gestation nephrogenesis using a non-human primate model"

## 📖 Overview
Late-gestation nephrogenesis is a critical period during kidney development, responsible for generating the majority of nephrons. While human nephrogenesis transitions through distinct phases—including branching phase nephrogenesis (BpN) and lateral branch nephrogenesis (LBN)—the molecular mechanisms underlying these transitions remain poorly understood. In this study, we leveraged scRNA-seq to integrate rhesus macaque and human fetal kidney datasets, providing insights into the transitional nephron progenitor cell (NPC) states that may regulate nephron amplification during LBN.

## 📊 Data Availability
The single-cell RNA sequencing data generated in this study will be available on NCBI Gene Expression Omnibus (GEO) under accession number [GEO Accession Number] (to be released upon publication).

Publicly available human fetal kidney datasets used for integration are: GSE114530, GSE112570, and GSE102596.

## 📂 Contents
This repository includes:
1. Integration of rhesus and human datasets using Harmony
2. Cell cluster label transfer using cellHarmony
3. Determining enriched NPCs (eNPCs)
4. Lineage trajectory inference using Monocle
5. Ligand-receptor interaction analysis using CellChat

To reproduce the analyses, follow the scripts in the scripts/ directory. Dependencies and installation instructions are listed below:

## 📜 Citation
If you use this repository, please cite the pre-print available on bioRXiv: [link]
