# circos_data <br />
Scripts and examples for making circos files for genomic data <br />

**karyotypify.sh** <br />
Summarizes information from a fasta file into the circos karyotype format <br />
 * Inputs: <br />
   * fasta file path <br />
   * output file path <br />
 * Outputs: <br />
   * circos karyotype file format for input fasta file <br />

**linkify.sh** <br />
Summarizes information from a pairwise alignment file into the circos links format <br />
 * Inputs: <br />
   * pairwise alignment (.paf) file between two sequences <br />
   * output file path <br />
 * Outputs: <br />
   * links file formatted for circos, with black as a default color for each link <br />

**histify.sh** <br />
Pretty specific, probably not crazy useful, but I included it anyway <br />
 * Inputs: <br />
   * csv file path - this csv is assumed to have: <br />
     * a single-line header <br />
     * column 1 - sequences (as they appear on the karyotpe file) <br />
     * column 2 - start of window <br />
     * column 3 - end of window <br />
     * columns 4+ - counts of different features in each window. These counts are totalled up and divided by (start - end + 1), then multiplied by 100 for a percent value. <br />
   * output file path <br />
 * Outputs <br />
   * histogram file formatted for circos <br />
  
