 package require psfgen 	 
 topology top_all36_cgenff.rtf     ;# and other FF topology files
 topology molecule.top             ;# or your custom topology filr
 segment MOL {pdb mol-ini.pdb} 	   ;# the pdb file is read twice: one is reading the structure,
 coordpdb mol-ini.pdb MOL          ;# second is reading and assigning coordinates
 guesscoord                        ;# this works for residues having extended connectivity information (bond length, angles), otherwise it's going to be 0.000 0.000 0.000  
 regenerate angles dihedrals       ;# important for sugars
 writepdb mol.pdb 	           ;# load into VMD both *.psf and *.pdb to check the structure
 writepsf mol.psf
 exit