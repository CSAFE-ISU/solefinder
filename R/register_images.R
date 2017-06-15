##' Register Images
##'
##' This function register two images based on two points
##' selected by the user. This function is useful in shiny app.
##' @param img_orig A matrix representing the original image
##' @param img_trans A matrix representing the translated image
##' @param img_orig_p1 Reference point 1 in the original image
##' @param img_orig_p2 Reference point 2 in the original image
##' @param img_orig_p3 Reference point 3 in the original image
##' @param img_trans_p1 Reference point 1 in the translated image
##' @param img_trans_p2 Reference point 2 in the translated image
##' @param img_trans_p3 Reference point 3 in the translated image
##' @return The registration of the two images
##' @author Martin Silerio-Vazquez
##' @export
register_images <- function (img_orig, img_trans, img_orig_p1, img_orig_p2, img_orig_p3,
                             img_trans_p1, img_trans_p2, img_trans_p3) {

  ## First thing, we need to compute the values of the parameters given
  ## img_orig_p1, img_orig_p2, img_orig_p3, img_trans_p1, img_trans_p2 and
  ## img_orig_p3

  ## First I need to double check the formulas I got from stack overflow...


    return(img_orig)
}
