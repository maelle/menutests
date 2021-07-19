reveal_secret <- function(secret, ok = ask()) {
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
