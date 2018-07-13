#!/bin/bash
set -e
set -x

conda config --add channels omnia
conda config --add channels conda-forge
/io/conda-build-all -vvv --force $UPLOAD --python $PYVER -- /io/openmm /io/meld
