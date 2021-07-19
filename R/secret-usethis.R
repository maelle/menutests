reveal_secret_usethis <- function(secret, ok = usethis::ui_yeah("Tell secret")) {
  if (ok) {
    message(secret)
  } else {
    message("Nothing done.")
  }
}
