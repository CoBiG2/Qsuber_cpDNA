# Qsuber_cpDNA
Data and scripts for the paper "Haplotype diversity patterns in cork oak inferred from cpDNA sequence data"

## `map_plotter.py`

This script is based on [this version](https://github.com/CoBiG2/Qsuber_mssats/blob/main/map_plotter.py) from another repository and paper, and both are based on the one from [pyRONA](https://pyrona.readthedocs.io/en/latest/).
Requires cartopy, numpy and matplotlib. Takes 3 arguments (in this order): `sample_coords.csv`, `output.svg` and `shapefile.shp` It will draw a map, based on the sample coordinates, with the distribution shapefile superimposed.
