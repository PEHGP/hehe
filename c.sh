#!/bin/bash
line=$1
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4*0.0155194220066}' ${line}"_nucleus.bdg" >${line}"_nucleus_norm.bdg"
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4*0.0155194220066}' ${line}"_fwd_nucleus.bdg" >${line}"_fwd_nucleus_norm.bdg"
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4*0.0155194220066}' ${line}"_rev_nucleus.bdg" >${line}"_rev_nucleus_norm.bdg"
bedGraphToBigWig ${line}"_nucleus_norm.bdg" chrom_nucleus.size ${line}"_nucleus_norm.bw"
bedGraphToBigWig ${line}"_fwd_nucleus_norm.bdg" chrom_nucleus.size ${line}"_fwd_nucleus_norm.bw"
bedGraphToBigWig ${line}"_rev_nucleus_norm.bdg" chrom_nucleus.size ${line}"_rev_nucleus_norm.bw"
