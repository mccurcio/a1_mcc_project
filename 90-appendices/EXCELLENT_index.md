#--- 
#title:  "Just Enough Machine Learning"
#author: "Matthew Curcio"
#date:   "`r gsub(' 0', ' ', format(Sys.Date(), '%B %d, %Y'))`"
#site:   bookdown::bookdown_site
#output:
#  bookdown::gitbook: default
#  bookdown::pdf_book: default
#github-repo: rstudio/bookdown-demo
#description: "Work based on 'Top 10 Algorithms In Data Mining' by X.Wu etal, Knowl Inf Syst (2008) 14:1-37 and 'Applied Predictive Modeling', Max Kuhn etal, Springer, 2018."
#---


```{r, include=FALSE}
knitr::opts_chunk$set(cache = TRUE, 
                      warning = FALSE, 
                      message = FALSE, 
                      cache.lazy = FALSE)
```

# Preface {-}

#### Welcome  {-}
This is booklet had started off as a hands-on Linux command line guide for new biology students. As I stepped back-and-forth, back-and-forth from that project I realized I was more interested in teaching myself machine learning using R and RStudio.

However, while I was reading on the topic of Linux, I found a quote that describes the philosophy of Unix.

>The Unix philosophy is one of simple tools, each doing one job well...
>Anonymous

This is **NOT** the philosophy of R nor RStudio.  The R library repository, as of April 29, 2019, has more than 14,096 packages. I am still looking for an R package that fits the Unix motto.

#### Who This Book Is For {-}

This book is for me. It is very informal as is my conversational style. It is my record of what I believed would help me in the future. I plan on using this booklet as a template for other data science projects that I will do in the near future.

#### Acknowledgments {-}

I would like to thank Doctors Dmitry Korkine and Elizabeth Ryder for their patience and generosity.

#### Dedication {-}

>To The Socratic Paradox,
>
>*I know that I know nothing*

#### About the Author {-}

Matthew C. Curcio is a Chemist, Biochemist, Teacher and Student who loves science.

<div style="page-break-after: always;"></div>

#### Abstract ??????? 

Predictive modeling methods, supervised and unsupervised, have been introduced in 'Top 10 Algorithms In Data Mining' by X. Wu etal, 2008.[^i1] Unfortunately, there are no easy rules to follow for which models to use in all situations. The comically named 'No Free Lunch Theorems for Optimization'[REF]  "demonstrates the danger of comparing [general-purpose] algorithms by their performance on a small sample of problems."[^i2] Therefore the author felt it is necessary to carry out an empirical study of 9 of the 10 machine learning algorithms which were deemed influential in the field of data mining by International Conference on Data Mining, which was polling source for the Wu paper. These algorithms include C5.0, k-Means, SVM, Prior, EM, AdaBoost, kNN, Naive Bayes, and CART. PageRank was not considered due to its in-applicability. These methods can be carried out using one all encompassing program known as *caret* written by Max Kuhn etal.[^i3] *caret* is an R language package which allows one to use the same syntax for machine learning libraries written by over 200 different researchers also in the R language. These nine machine learning methods will be used on the classification of Oxygen binding proteins, eg. Hemoglobin, into six groupings as well as a negative control supplementing work carried out by S. Muthukrishnan etal, which only investigates the utility of SVM to differentiate the 6 groups.[^i4] The machine learning tests were will compared primarily using two measures, cpu-run time, and Cohen's kappa.

 [^i1]:*Top 10 algorithms in data mining*, X. Wu, Knowl Inf Syst (2008) 14:1–37,
DOI 10.1007/s10115-007-0114-2
[REF]'No Free Lunch Theorems for Optimization'[REF] 
 [^i2]:*No Free Lunch Theorems for Optimization*, IEEE Transactions On Evolutionary Computation, Vol. 1,NO. 1, April 1997, D. Wolpert etal 
 [^i3]:*The caret Package*, M. Kuhn, 2019-03-27, https://topepo.github.io/caret/index.html
 [^i4]:*Oxypred: Prediction and Classification of Oxygen-Binding Proteins*, S. Muthukrishnan etal, Geno. Prot. Bioinfo., Vol. 5 No. 3–4, 2007

---

# Prerequisites {#section-Prerequisites}

As a Bioinformatician, I also consider myself a data scientist. If you are not aware of the ubiquitous Venn diagram of Bioinformatics and Data Science, let's look at this for a moment.

```{r, echo=FALSE, fig.align='center', fig.asp=.75, fig.cap='Venn diagram of Bioinformatics and Data Science', message=FALSE, warning=FALSE, out.width='75%'}
knitr::include_graphics('images/Bio-DS-Venn-diagram-1024x576.png')
```

To Biologists and Biochemists (which I also consider myself), it is my task to become more familiar with computer languages, miscellaneous concepts and statistics. 

#### Regarding the Computing Side {-}

As of the writing of this booklet, Data Science and Bioinformatics are now centered around the computer languages [R](https://cran.r-project.org/) and [Python](https://www.anaconda.com/).

To many researchers in data science and bioinformatics the field now includes such languages as,
*in no particular order*,

- [R](https://cran.r-project.org/)
- [Python](https://www.anaconda.com/).
- [Bash shell scripting](https://www.datascienceatthecommandline.com/),
- [SQL](https://en.wikipedia.org/wiki/SQL),
- [Julia](https://julialang.org/),
- [Perl](https://www.perl.org/),
- [C](https://en.wikipedia.org/wiki/C_%28programming_language%29),
- [Javascript](https://www.javascript.com/),
- [RMarkdown](https://rmarkdown.rstudio.com/), (this one is fun and easy)

#### Just start with one language** {-} 

- Stick with it for a time and learn it. Learn the ins-and-outs of one language first.

#### Is R or Python better?** {-}

1. R & Python are both FREE,
1. Both have great integrated development environments (IDEs),
   - [RStudio](https://www.rstudio.com/) is great & FREE,
   - [Spyder](https://www.spyder-ide.org/) is also great & FREE,
1. Both languages have been around for > 20 years, therefore both have tons of FREE information & tutorials on YouTube,

Ultimately, I chose to start with R because I liked the *community* around it.

## What you will need for this project?

1. An Internet connection,
2. A computer with between 1 & 3 Gigabytes of free hard drive storage,
   - R-Packages & libraries *can take a lot of space*,
3. The program [R](https://cran.r-project.org/),
4. The program [RStudio](https://www.rstudio.com/).

## Download/Install R & RStudio

**NOTE**: I use [Ubuntu](https://www.ubuntu.com/).

1. Go to: https://cran.r-project.org/
```{r, echo=FALSE, fig.align='center', fig.asp=.75, fig.cap='https://cran.r-project.org', message=FALSE, warning=FALSE, out.width='65%'}
knitr::include_graphics('images/R-cran-homepage.png')
```
1. Choose R for your operating system.

1. I recommend that you download/install 3 R files.
   1. r-base-core_3.#.# * .deb  (approx. 30 MB)
   1. r-base-dev_3.#.# * .deb   (approx. 45 KB)
   1. r-base_3.#.#-*.deb        (approx. 90 KB)
   1. r-base-html-3.#.#-*.deb   (approx. 90 KB)

1. If you do have Linux you may try this video: [How to install R.](https://www.youtube.com/watch?v=LeB15G14N7g)
   
1. Go to: https://www.rstudio.com/

```{r, echo=FALSE, fig.align='center', fig.asp=.75, fig.cap='RStudio Home Page', message=FALSE, warning=FALSE, out.width='60%'}
knitr::include_graphics('images/rstudio-homepage_circles.png')
```

1. From RStudio's homepage click, *Products* then click *RStudio* from the dropdown menu.
1. Click the Download of the FREE version of RStudio Desktop
1. Click 'RStudio #.#' to download a version for your machine

Q. Have Linux? Try this - [How to install RStudio.](https://www.youtube.com/watch?v=LeB15G14N7g)

1. If you are looking for instructions for Mac & Windows machines try: 
   - [FreeCodeCamp](https://guide.freecodecamp.org/r/)
   
## Help! Where to find.

1. [Cheat Sheets](https://resources.rstudio.com/rstudio-cheatsheets)
1. https://community.rstudio.com
1. https://www.reddit.com/r/RStudio/
1. https://stackoverflow.com/
1. https://R-bloggers.com/
1. https://resources.rstudio.com/
1. [Rpubs.com](https://rpubs.com/)

- **Rpubs.com** contains R/RStudio notebooks and Markdown pages, VERY HELPFUL work from other peoples online R documents. It is a way to learn from others and share your work. - Sign up, it is [FREE](https://rpubs.com/)! then press: *Get Started*

**NOTE**: If you are interested in seeing what others have published search Google, Rpubs.com does not have its own search function. In Google, Search: `site:rpubs.com eda`

Other sites:

1. [Coursera]()
1. https://www.quora.com/What-is-data-science
1. [Roger Peng's EDA](https://youtu.be/ZXrHkIz-krE?t=15)
1. [Bookdown](https://bookdown.org/).

By the way, LEARN GIT!

## Resources for learning Data Science

The Lean Publishing (https://leanpub.com) company contains a library in the form of FREE down-loadable books/pdfs. I recommend;

1. How to be a modern scientist[^i5]  by Jeffrey Leek[^i6] 
2. R Programming for Data Science[^i7]  by Roger Peng[^i8] 
3. Exploratory Data Analysis with R[^i9]  by Roger Peng
4. Data Analysis for the Life Sciences[^i10]  by Rafael Irizarry & Michael Love

[^i5]:https://leanpub.com/modernscientist
[^i6]:http://jtleek.com
[^i7]:https://leanpub.com/rprogramming
[^i8]:https://simplystatistics.org
[^i9]:https://leanpub.com/exdata
[^i10]:https://leanpub.com/dataanalysisforthelifesciences


## Load all libraries used in this project

If you copy the text below into a RMarkdown file (.rmd) you will be able to load all the libraries you will need without the bother of re-installing libraries.

--- 
Copy from here:
```{r eval=FALSE}
install.packages("rlang")
library(rlang)
knitr::opts_chunk$set(cache = TRUE, 
                      warning = FALSE, 
                      message = FALSE, 
                      cache.lazy = FALSE)
                      
# If you are using Ubuntu Linux may need these Linux libraries first.
# Install: libcurl4-openssl-dev, libssl-dev, libxml2-dev

load_or_install <- function(package_names) {
    for(package_name in package_names) {
        if(!is_installed(package_name)) {
            install.packages(package_name, repos = "http://lib.stat.cmu.edu/R/CRAN",
                             dependencies = TRUE)
        }
        # Uncomment line below to load libraries.
        # library(package_name,character.only=TRUE,quietly=TRUE,verbose=FALSE) 
        print("OK")
        }
}

load_or_install(c("readr", "doMC", "corrplot", "knitr", "caret", "tidyverse"))
```

```{r eval=FALSE}
load_or_install(c("ggplot2", "C50", "rmarkdown", "bookdown", "blogdown", "kernlab", "mclust"))
```

```{r eval=FALSE}
load_or_install(c("mvtnorm", "fastAdaboost", "e1071", "plyr", "RColorBrewer"))
```

```{r eval=FALSE}
load_or_install(c("rpart", "Cubist", "kknn", "class", "klaR", "MASS"))
```

```{r eval=FALSE}
load_or_install(c("LogicReg", "naivebayes", "bnclassify", "randomForest", "foreach"))
```

```{r eval=FALSE}
load_or_install(c("import", "ipred", "dplyr", "stringr", "stringi", "cluster", "factoextra"))
```

```{r eval=FALSE}
load_or_install(c("tidyr", "lubridate", "ggplot2", "htmlwidgets", "zoo", "xtable"))
```
End copy here.