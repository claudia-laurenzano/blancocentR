# pkgdown/_pkgdown.R

# Ensure fonts render nicely on pkgdown
if (requireNamespace("showtext", quietly = TRUE)) {
  library(showtext)

  # Add your Google Fonts
  font_add_google("Quicksand", "Quicksand")
  font_add_google("Bitter", "Bitter")

  # Optional: Univers (only if you can include it)
  univers_path <- system.file("fonts", "Univers.ttf", package = "blancocentR")
  if (file.exists(univers_path)) {
    font_add("Univers LT Std", univers_path)
  }

  # Automatically use showtext
  showtext_auto()
}
