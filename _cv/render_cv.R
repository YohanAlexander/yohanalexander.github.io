# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering. This exercise is left to the reader.

# Knit the HTML version
rmarkdown::render("_cv/en/cv.Rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "../../files/cv/en/cv.html")

# Knit the PDF version to temporary html location
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("_cv/en/cv.Rmd",
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = "files/cv/en/cv.pdf",
                       #browser = 'chromium',
                       extra_args = '--no-sandbox') #running inside docker container

# Knit the HTML version
rmarkdown::render("_cv/pt-br/cv.Rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "../../files/cv/pt-br/cv.html")

# Knit the PDF version to temporary html location
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("_cv/pt-br/cv.Rmd",
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = "files/cv/pt-br/cv.pdf",
                       #browser = 'chromium',
                       extra_args = '--no-sandbox') #running inside docker container

