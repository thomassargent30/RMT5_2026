import re


rgb_hunter = re.compile("([0-9]+\.*[0-9]*)\s+([0-9]+.*[0-9]*)\s+([0-9]+.*[0-9]*)\s+sr")

replace_str = "{gray} sg"

fname = "backus1.eps"
outfname = "backus1_gray.eps"

with open(fname, "r") as old_f:
    with open(outfname, "w") as new_f:
        for line in old_f.readlines():
            hunted = rgb_hunter.search(line)
            if hunted is None:
                new_f.write(line)
            else:
                s, e = hunted.span()
                r, g, b = hunted.groups()
                r = float(r)
                g = float(g)
                b = float(b)
                gray = 0.299*r + 0.587*g + 0.114*b
                newline = line.replace(line[s:e], replace_str.format(gray=gray))
                new_f.write(newline)


