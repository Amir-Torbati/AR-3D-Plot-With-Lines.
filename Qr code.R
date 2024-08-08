install.packages("qrencoder")
library(qrencoder)


# Generate a QR code pointing to your GitHub Pages URL
qr_code <- qrencoder::qrencode("https://Amir-Torbati.github.io/AR-3D-Plot-With-Lines/ElectricityDispatchSpainWithLines.html")

# Save the QR code as a PNG file
png("qrcode.png")
grid::grid.raster(qr_code)
dev.off()
