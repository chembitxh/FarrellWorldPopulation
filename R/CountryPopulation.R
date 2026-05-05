#' Plot Population for a Country
#'
#' Generates a population vs. year plot (1950–2020) for a specified country.
#'
#' @param country A character string giving the country name.
#'
#' @return A ggplot object showing population over time.
#'
#' @examples
#' CountryPopulation("Brazil")
#'
#' @export
CountryPopulation <- function(country){
  if(!(country %in% WorldPopulation2$`Country Name`)){
    stop("Bro the country isn't here")}
  WorldPopulation2 %>%
    filter(`Country Name`==country) %>%
    ggplot() +
    aes(x=Year, y=Population, color=`Country Name`,
        group=`Country Name`) +
    geom_line() +
    labs(
      x = "Year",
      y = "Population")}
