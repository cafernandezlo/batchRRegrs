#!/bin/sh
module load R/3.2.4

Rscript callingBatchRRegrs.R methodsList $1 datafilename $2 outvalidationfile $3 pathdataset $4
