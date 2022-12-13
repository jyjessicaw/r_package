test_that(
  "return 'hello' for null input",
  {
    p <-  hello()
    expect_equal(p, "Hello!")
  }
)

test_that(
  "return correct name for not null input",
  {
    p <- hello(name = "Jessica")
    expect_equal(p, "Hello Jessica!")
  }
)

test_that(
  "return invisible for invisible input",
  {
    expect_invisible(hello(name = "Ruby", invisible = TRUE))
  }

)
