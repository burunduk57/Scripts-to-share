# Scripts to share
Some home cooked scripts, mostly for VMD and Pymol

# tcl scripts for VMD
`vmd -dispdev text -e <script-name>.tcl`

`molecule.tcl` TCL script for VMD to test the structure and/or topology of a small molecule. It generates pdb and psf files, and by loading them into VMD, you can spot the most common errors: missing and mislabeled atoms. If your initial pdb file has a residue or atom names, not mentioned in the topology file , the script would not produce output.


## trick for residues with long resname (more than 3 letters), like sugars:
```
 segment SEG {
 first none
 last none
 pdbalias residue RES RESNAME
 pdb molecule.pdb} 	
```
