## Print SASA for each residue
#set psf     AF2-Mjet1-r0.psf  ;# psf file is not mandatory
set pdb     structure.pdb
set prefix  structure
set totalresnum  200           ;# total number of residues

#mol load psf $psf pdb $pdb
mol load pdb $pdb
set allsel [atomselect top all] 
set outfile [open sasa-resnumber-$prefix.dat w]; 
for {set i 0 } {$i < $totalresnum} {incr i} {
  set sel [atomselect top "residue $i"] 
  set rsasa [measure sasa 1.4 $allsel -restrict $sel] 
  $sel set user $rsasa 
  $sel delete 
  puts $outfile "residue $i, sasa; $rsasa" 
} 
close $outfile 

exit
