epstopdf neal1newa.eps neal1newa.pdf
gs -sDEVICE=pdfwrite -sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray -dOverrideICC -o neal1newa_gray_gs.pdf -f neal1newa.pdf
pdftops -eps neal1newa_gray_gs.pdf neal1newa_gray_epstopdftoeps.eps

