#' Compute Nitrogen concentration in runoff in given data set
#'
#' This function allows the user to input land area, fertilizer application rate, and precipitation and compute the estimated
#' amount of water into the nearby water body and how run off impacts water quality.
#'
#' @param runoff_coeff constant based on soil type
#' @param nutrient_conc concentration of nitrogen in land area (mg/L)
#' @param land_area (ha) size of land where fertilizer is applied
#' @param application_rate kg Nitrogen/ha
#' @param precipitaion rainfall intensity (mL/24hr)
#' @param nitrogen_max  (mg/L) maximum nitrogen level in fresh water bodies by EPA (using NJ standards)
#'
#'
#' @return runoff concentration


#'
runoff_rates <- function(land_area, application_rate, precipitation){
  runoff_coeff = 0.2
  nutrient_conc = (application_rate*land_area)/2

  runoff_rate = (nutrient_conc*runoff_coeff*precipitation)/ 1000

  return(runoff_rate)

}
