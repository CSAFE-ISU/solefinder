
##' Resize Image
##'
##' Resize an image to a fraction of its space.
##' @param img A image passed as a matrix.
##' @param fraction Proportion of memory of the resulting image.
##' @return An image
##' @author Guillermo Basulto-Elias
##' @export
resize_image <- function (img, fraction) {
    cat("Object size = ", object.size(img), "\n")
    cat("Image size: ", paste(dim(img), sep = "x"), "\n")
    TRUE
}
