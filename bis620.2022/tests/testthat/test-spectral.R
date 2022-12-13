test_that(
  "test the output is a tibble",
  {
    data(ukb_accel)
    p <- spectral_signature(ukb_accel[1:100, ])
    expect_true(inherits(p, "data.frame"))

})

test_that(
  " test when take_log is true, the output should be in log value.",
  {
    data(ukb_accel)
    p <- spectral_signature(ukb_accel[1:100, ], take_log = TRUE)
    pp <- spectral_signature(ukb_accel[1:100, ])
    expect_equal(p$X, log(pp$X))

  }
)
