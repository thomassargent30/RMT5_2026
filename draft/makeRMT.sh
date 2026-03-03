makeindex matlblk
tex RMT5
makeindex RMT5
makeindex RMT5.idx
makeindex RMT5
makeindex authblk
makeindex authblk.idx
makeindex matlblk
makeindex matlblk.idx
tex RMT5
dvips RMT5.dvi > RMT5.ps
ps2pdf RMT5.ps > RMT5.pdf