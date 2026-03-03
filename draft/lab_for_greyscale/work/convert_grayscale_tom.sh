epstopdf backus2.eps backus2.pdf
gs -sDEVICE=pdfwrite -sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray -dOverrideICC -o backus2_gray_gs.pdf -f backus2.pdf
pdftops -eps backus2_gray_gs.pdf backus2_gray_epstopdftoeps.eps

