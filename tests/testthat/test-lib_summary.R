test_that("Lib summary returns expected results", {
  res <- lib_summary()
  expect_s3_class(res, "data.frame")
  expect_equal(ncol(res), 2)
  expect_equal(names(res), c("library", "n_packages"))
  expect_type(res3(library, "character"))
  expect_type(res$n_packages, "interger")
})
