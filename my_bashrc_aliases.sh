# alias for grep by iuri 2016.02.01 #e.g.: kd print*, .f90
#kd() { grep -ri --include "*$2" -F "$1" .; }
kd() { grep -ri -A1 --include "*$2" -F "$1" .; } #shows 1 following line
#alias for quick 7z backup #e.g. bk projeto #don't: bk projeto/
bk() { NAM=$1; if [ $1 = "help" ]; then echo "cannot bk help"; else EXT=_.$(date +%Y.%m.%d.%Hh.%Mm)_.7z; 7z a $NAM$EXT $NAM; fi; }
