makeindex matlblk
tex RMT4
makeindex rmt4
makeindex rmt4.idx
makeindex authblk
makeindex authblk.idx
makeindx matlblk
makeindx matlblk.idx

tex RMT4

dvips -Pcmz -Pamz rmt4
