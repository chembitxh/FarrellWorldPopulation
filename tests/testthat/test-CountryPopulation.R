test_that("CountryPopulation errors for invalid country name", {
  expect_error(CountryPopulation("NotARealCountry"))})
