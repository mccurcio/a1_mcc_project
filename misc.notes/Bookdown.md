https://bookdown.org/yihui/bookdown
===================================

text refereences
================
A normal paragraph.

(ref:foo) A scatterplot of the data `cars` using **base** R graphics. 

```{r foo, fig.cap='(ref:foo)'}
plot(cars)  # a scatterplot
```

=============================

figs

![title \label{id}](../images/B.png)

knitr::include_graphics("images/knit-logo.png", out.width = '33%')

=================================

tables

knitr::kable(
  head(mtcars[, 1:8], 10), booktabs = TRUE,
  caption = 'A table of the first 10 rows of the mtcars data.'
)

================================

Cross-references


    If you are happy with the section header as the link text, 
    use it inside a single set of square brackets:
    [Section header text]: example “A single document” via [A single document]
    There are two ways to specify custom link text:
    [link text][Section header text], e.g., “non-English books” via 
    [non-English books][Internationalization]
    [link text](#ID), e.g., “Table stuff” via [Table stuff](#tables)

==================================

Custom Blocks

<div class="FOO">
Some text for this block.
</div>

=======================

Citations

# the second argument can be a .bib file
knitr::write_bib(c("knitr", "stringr"), "", width = 60)


=============================


Index

Currently the index is only supported for LaTeX/PDF output. To print an index after the book, you can use the LaTeX package makeidx in the preamble (see Section 4.1):

\usepackage{makeidx}
\makeindex

Then insert \printindex at the end of your book through the YAML option includes -> after_body. An index entry can be created via the \index{} command in the book body, e.g., \index{GIT}.

===========================================

Web pages

knitr::include_url()

screenshot.opts = list(delay = 5)


===============================

Build the book

To build all Rmd files into a book, you can call the render_book() function in bookdown. Below are the arguments of render_book():


render_book(input, output_format = NULL, ..., clean = TRUE, 
  envir = parent.frame(), clean_envir = !interactive(), 
  output_dir = NULL, new_session = NA, preview = FALSE, 
  encoding = "UTF-8", config_file = "_bookdown.yml")


#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
























