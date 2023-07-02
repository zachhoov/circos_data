# circos_data
Scripts and examples for making circos files for genomic data

KARYOTYPIFY.SH
Summarizes information from a fasta file into the circos karyotype format
inputs:
  fasta file path
  output file path
outputs:
  circos karyotype file format for input fasta file

LINKIFY.SH
Summarizes information from a pairwise alignment file into the circos links format
inputs:
  pairwise alignment (.paf) file between two sequences
  output file path
outputs:
  links file formatted for circos, with black as a default color for each link

HISTIFY.SH
Pretty specific, probably not crazy useful, but I included it anyway.
inputs:
  csv file path - this csv is assumed to have:
    a single-line header
    column 1 - sequences (as they appear on the karyotpe file)
    column 2 - start of window
    column 3 - end of window
    columns 4+ - counts of different features in each window. These counts are totalled up and divided by (start - end + 1), then multiplied by 100 for a percent value.
  output file path
outputs
  histogram file formatted for circos
  
