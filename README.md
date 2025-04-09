# Alejandra Lopez
Exercises for course Understanding bioinformatics pipelines (BESE394A)

Main documents

  **Week 1:**
  
    HW1_AlejandraL_GSE94892.R
    
  **Week 2:**
  
    Integrated analysis_RNAseq.Rmd
    
    BESE394A_Group2_Week2.pptx
    
  **Week 3:**
  
    Neutrophil_analysis_W3.html
    
    Neutrophil_analysis_W3.Rmd
    
  **Week 4:**
  
    Report_Group2_W4_assignment.pdf
    
  **Week 5:**
  
    Explore_data_Multi.R
    
    Report_Assignment_W5_Multiome.pdf

  **Week 6:**
  
    Assignment_W6_IntegrativeApproach_G2.pdf
    
  **Week 7:**
  
    DNA_Methylation_Analysis.Rmd
    
    DNA_Methylation_Analysis.html
    

  **Final Project:**
  
    Report: https://docs.google.com/document/d/1t3039llopTfidaDvMS1W7KzCD7soMXBb3zT8i2CuTZg/edit?usp=sharing

    Presenattion: https://docs.google.com/presentation/d/1wu0FdKz1b07nqBcYM3OCjvaL-UB4x8ok6Q_A2G8HL4U/edit?usp=sharing
    
    Github Nextflow Pipeline: https://github.com/rund0wn/WGS    


## Understanding Kraken Output for Metagenomic Classification

**Kraken Output Data**

| Status | Contig ID    | Best Taxonomic Match | Length | K-mer Matches |
|--------|--------------|----------------------|--------|---------------|
| U      | 1Dr2_1126348 | 0                    | 649    | 0:615         |
| C      | 1Dr2_1480339 | 2653852              | 682    | 0:26, 1495638:2, 0:211, 2897342:1, 0:100, 2653852:3, 0:305 |
| C      | 1Dr2_804538  | 1793                 | 764    | 1760:3, 0:21, 1866885:2, 0:1, 1866885:2, 212767:5, 0:4, 1793:2|
| C      | 1Dr2_901081  | 1866885              | 511    | 1866885:2, 0:5, 1866885:3, 2:3, 216929:5, 1431246:5|

**Explanation:**

- **Status (C/U)**: Indicates whether the sequence was 'C'lassified or 'U'nclassified.
- **Contig ID**: Unique identifier for each sequence analyzed.
- **Best Taxonomic Match**: NCBI taxonomy ID that best matches the sequence based on k-mer analysis.
- **Length**: Length of the sequence in base pairs.
- **K-mer Matches**: Lists the taxonomy IDs and the count of matching k-mers. The '0' ID represents unclassified k-mers.

This table and accompanying details provide a comprehensive view of how Kraken classifies sequences from metagenomic data. Each sequence is broken down by its matches to specific taxonomic IDs, highlighting the diversity and composition of microbial life in the sample.
