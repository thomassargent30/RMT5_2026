makeindex matlblk
tex RMT5
makeindex rmt5
makeindex rmt5.idx
makeindex authblk
makeindex authblk.idx
makeindx matlblk
makeindx matlblk.idx

tex RMT5

dvips -Pcmz -Pamz rmt5
