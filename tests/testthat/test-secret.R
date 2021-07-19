test_that("reveal_secret works", {
  expect_message(reveal_secret("top-secret", ok = TRUE), "top-secret")
  expect_message(reveal_secret("top-secret", ok = FALSE), "Nothing")
})

test_that("reveal_secret works, mocking", {
  mockery::stub(where = reveal_secret, what = "ask", how = TRUE)
  expect_message(reveal_secret("top-secret"), "top-secret")
})

test_that("reveal_secret works, mocking 2", {
  mockery::stub(where = reveal_secret, what = "ask", how = FALSE)
  expect_message(reveal_secret("top-secret"), "Nothing")
})

test_that("reveal_secret works, will fail", {
  expect_message(reveal_secret("top-secret"), "Nothing")
})
