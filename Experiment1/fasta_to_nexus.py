#!/usr/bin/env python3

# This script is to convert a FASTA file to NEXUS for MrBayes.

import os

fasta_file = open("whitefly_concat.fasta", "r")

output_dir = "nexus_files"
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

### DEFINE THESE VARIABLES ###
datatype = "DNA"  # Only three options: 1) DNA 2) PROTEIN 3) RNA.
mrbayes_outfile_name = "mb_1n16ppn_boykin_and_de_barro_outfile"
script_outfile_name = "boykin_and_de_barro_alignment.nexus"
### DEFINE THESE VARIABLES ###

taxon_name_w_seq = {}

for lines in fasta_file:
    if lines.startswith(">"):
        taxon_name_w_seq[lines.rstrip()] = next(fasta_file).rstrip()

longest_taxon_name = (max(map(len, taxon_name_w_seq)))

nexus_file = "#NEXUS\n" + "BEGIN DATA;\n" + f"\tDimensions NTAX={len(taxon_name_w_seq)} NCHAR={len(max(taxon_name_w_seq.values()))};\n" \
    + f"\tFORMAT DATATYPE={datatype} GAP=- MISSING=?;\n" + "\tMATRIX\n\t" \
    + "\n\t".join(f'{k[1:]}{" " * (longest_taxon_name - len(k) + 5)}{"".join(v)}' for k, v in taxon_name_w_seq.items()) \
    + "\n;\n" + "END;\n\n" + "BEGIN MRBAYES;\n" + "\tset autoclose=yes nowarn=yes;\n" + "\tmcmcp ngen=1000000 nruns=4 burninfrac=0.25;\n" \
    + "\tmcmcp samplefreq=1000 printfreq=1000 nchains=4 starttree=random;\n" + f"\tmcmcp savebrlens=yes filename={mrbayes_outfile_name};\n" \
    + "\tmcmc;\n" + "\tsump;\n" + "\tsumt;\n" + "END;"

with open(os.path.join(output_dir, f"{script_outfile_name}"), "w") as out:
    out.write(nexus_file)
