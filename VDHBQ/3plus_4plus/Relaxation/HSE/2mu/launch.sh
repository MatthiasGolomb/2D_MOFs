#!/bin/bash --login
#PBS -l select=16
#PBS -l walltime=24:00:00
#PBS -j eo
#PBS -N VDHBQ
#PBS -A e05-react-wal
#PBS -m bea
#PBS -q weekend
#PBS -M m.golomb18@imperial.ac.uk

export PBS_O_WORKDIR=$(readlink -f $PBS_O_WORKDIR)

cd $PBS_O_WORKDIR

aprun -n 384 /home/e05/e05/mat92/Codes/FHI_AIMS/fhi-aims.171221_1/bin/aims.171221_1.scalapack.mpi.x > $PBS_O_WORKDIR/output/calculation.out




