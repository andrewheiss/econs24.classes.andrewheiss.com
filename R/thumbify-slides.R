# convert -thumbnail 1000 -background white -units PixelsPerInch -density 300 $<[0] $@

library(tidyverse)
library(magick)
library(pdftools)

slides_dir <- here::here("content/slides")
thumbs_dir <- here::here("content/slides")
# thumbs_dir <- here::here("content/slides/thumbs")

thumbify <- function(pdf_name) {
  png_name <- paste0(tools::file_path_sans_ext(pdf_name), ".png")
  
  image_read_pdf(here::here(slides_dir, pdf_name), pages = 1) %>% 
    image_scale("2000") %>% 
    image_write(here::here(thumbs_dir, png_name), density = 600)
}

list.files(slides_dir, pattern = "\\.pdf") %>% 
  walk(thumbify)
