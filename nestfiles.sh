for file in *.f90; do
  name=${file##*/} 
  base=${name%.f90} #remove ".f90" from the string
  mkdir $base
  mv $base.f90 $base/$base.f90
done
