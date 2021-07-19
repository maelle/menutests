reveal_secret <- function(secret, ok = ask()) {
  if (is.null(ok)) {
    stop("A value is needed for `ok` see ?reveal_secret")
  }
  if (ok) {
    message(secret)
  } else {
    message("Nothing done.")
  }
}

ask <- function() {
  switch(
    utils::menu(c("yes", "no"), title = "Ok to print secret?"),
    TRUE, FALSE
  )
}
