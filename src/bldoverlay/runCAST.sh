#!/bin/sh

rm AIRS.tmp

SDATE=2002152; export SDATE
EDATE=2002181; export EDATE

FILETYPE=CASTNET; export FILETYPE

## set overlay type to one of the following: (HOURLY, DAILY, 1HRMAX, 8HRMAX)
#OLAYTYPE=HOURLY; export OLAYTYPE
#OLAYTYPE=DAILY; export OLAYTYPE
#OLAYTYPE=1HRMAX; export OLAYTYPE
 OLAYTYPE=8HRMAX; export OLAYTYPE

INFILE=/project/model_eval/obs_data/cast_all.txt; export INFILE

OUTFILE=cast0602.ncf; export OUTFILE

/project/nox/src/bldoverlay/bldoverlay.exe

echo run complete, output = ${OUTFILE}