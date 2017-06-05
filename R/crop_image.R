##' Crop Image
##'
##' Crop an image on x and y. It is careful with NULL and out-of-range
##' values. This function is useful in shiny app.
##' @param img A matrix representing an image
##' @param x_range Limits to crop the image on x.
##' @param y_range Limits to crop the image on x.
##' @return A cropped image (in matrix form)
##' @author Guillermo Basulto-Elias
##' @export
crop_image <- function (img, x_range = NULL, y_range = NULL) {

    x_min <- min(max(1, x_range[1]), nrow(img))
    x_max <- max(min(nrow(img), x_range[2]), 2)
    y_min <- min(max(1, y_range[1]), ncol(img))
    y_max <- max(min(ncol(img), y_range[2]), 2)

    img[x_min:x_max, y_min:y_max]
}



##' Update click
##'
##' This function is used in the shiny app. A large image is zoomed-in
##' and a click is done on the second image. This function matches the
##' click with the coordinates of the original image.
##' @param ranges A list with the limits in x and y where the image
##'     was zoomed-in.
##' @param click Point where click was done in the scale of the
##'     zoomed-in image.
##' @return A dataframe with x and y in the original scale.
##' @author Guillermo Basulto-Elias
##' @export
update_click <- function (ranges, click) {
    x_new <- ranges$x[1] + click$x/diff(ranges$x)
    y_new <- ranges$y[1] + click$y/diff(ranges$y)

    data.frame(x = x_new, y = y_new)
}
