slide_links <- function(pdf = NULL, thumb = NULL) {
  if (is.null(pdf)) {
    out <- "<p>The slides from today will be posted here.</p>"
  } else {
    out <- glue::glue(
      '<p class="text-center buttons"><a class="btn btn-danger" target="_blank" href="{pdf}" role="button"><i class="fa-solid fa-file-pdf"></i> Download PDF of all slides</a></p>',
      '<figure class="slide-thumb">',
      '<a href="{pdf}"><img class="img-fluid" src="{thumb}" alt="First slide" /></a>',
      "</figure>"
    )
  }
  
  return(out)
}
