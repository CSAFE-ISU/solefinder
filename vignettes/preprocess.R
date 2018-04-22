## Here we will crop, invert the intensity of the pixels and apply a threshold to a given set of images
## We will read them from the folder IN
## And we will write them in the folder OUT
## The list of names to be processed will be read from a textfile

preProcessTIFF <- function(fileList) {

  n <- length(fileList)

  for(i in 1:n) {
    fileName <- fileList[i]
    img <- readImage(paste0("\\IN","\\",fileName))
    img_gray <- channel(img, mode = "gray")
    img_cropped <- img1_gray[161:1805, 161:4403]
    img_cropped_neg <- max(img_cropped) - img_cropped
    writeImage(img_cropped_neg, paste0("\\OUT","\\",fileName), compression = "none", bits.per.sample = 8)
  }

}

library(solefinder)
library(EBImage)

fileName <- "002054L_20171027_2_1_1_csafe_tpashek.tif"
img <- readImage(paste0("/IN","/",fileName))
img_gray <- channel(img, mode = "gray")
img_cropped <- img1_gray[161:1805, 161:4403]
img_cropped_neg <- max(img_cropped) - img_cropped
writeImage(img_cropped_neg, paste0("\\OUT","\\",fileName), compression = "none", bits.per.sample = 8)
