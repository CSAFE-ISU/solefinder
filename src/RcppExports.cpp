// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

// fourierin_1d_cpp
arma::cx_vec fourierin_1d_cpp(const arma::vec& f, double a, double b, double c, double d, double r, double s);
RcppExport SEXP _solefinder_fourierin_1d_cpp(SEXP fSEXP, SEXP aSEXP, SEXP bSEXP, SEXP cSEXP, SEXP dSEXP, SEXP rSEXP, SEXP sSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::vec& >::type f(fSEXP);
    Rcpp::traits::input_parameter< double >::type a(aSEXP);
    Rcpp::traits::input_parameter< double >::type b(bSEXP);
    Rcpp::traits::input_parameter< double >::type c(cSEXP);
    Rcpp::traits::input_parameter< double >::type d(dSEXP);
    Rcpp::traits::input_parameter< double >::type r(rSEXP);
    Rcpp::traits::input_parameter< double >::type s(sSEXP);
    rcpp_result_gen = Rcpp::wrap(fourierin_1d_cpp(f, a, b, c, d, r, s));
    return rcpp_result_gen;
END_RCPP
}
// fourierin_1d_nonregular_cpp
arma::cx_vec fourierin_1d_nonregular_cpp(const arma::vec& f, double a, double b, const arma::vec& w, int resolution, double r, double s);
RcppExport SEXP _solefinder_fourierin_1d_nonregular_cpp(SEXP fSEXP, SEXP aSEXP, SEXP bSEXP, SEXP wSEXP, SEXP resolutionSEXP, SEXP rSEXP, SEXP sSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::vec& >::type f(fSEXP);
    Rcpp::traits::input_parameter< double >::type a(aSEXP);
    Rcpp::traits::input_parameter< double >::type b(bSEXP);
    Rcpp::traits::input_parameter< const arma::vec& >::type w(wSEXP);
    Rcpp::traits::input_parameter< int >::type resolution(resolutionSEXP);
    Rcpp::traits::input_parameter< double >::type r(rSEXP);
    Rcpp::traits::input_parameter< double >::type s(sSEXP);
    rcpp_result_gen = Rcpp::wrap(fourierin_1d_nonregular_cpp(f, a, b, w, resolution, r, s));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_solefinder_fourierin_1d_cpp", (DL_FUNC) &_solefinder_fourierin_1d_cpp, 7},
    {"_solefinder_fourierin_1d_nonregular_cpp", (DL_FUNC) &_solefinder_fourierin_1d_nonregular_cpp, 7},
    {NULL, NULL, 0}
};

RcppExport void R_init_solefinder(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}