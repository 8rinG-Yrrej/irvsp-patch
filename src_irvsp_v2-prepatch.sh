#!/bin/sh
# This is prepatch script to be run before applying src_irvsp_v2.patch
# all .f files are not f77, but f90
for i in *.f
do
  mv $i ${i}90
done
