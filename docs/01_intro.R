#' # 1 Introduction to Random Forests with R
#' 
#' ## 1.5 Data sets
#' 
#' ### 1.5.1 Running example: spam detection
#' 
## ----introSpamLoad, tidy=FALSE-------
data("spam", package = "kernlab")
set.seed(9146301)
levels(spam$type) <- c("ok", "spam")
yTable <- table(spam$type)
indApp <- c(sample(1:yTable[2], yTable[2]/2),
            sample((yTable[2] + 1):nrow(spam), yTable[1]/2))
spamApp <- spam[indApp, ]
spamTest <- spam[-indApp, ]

#' 
#' ### 1.5.2 Ozone pollution
#' 
## ----introOzoneLoad------------------
data("Ozone", package = "mlbench")

#' 
#' ### 1.5.3 Genomic data for a vaccine study
#' 
## ----introVac18Load------------------
data("vac18", package = "mixOmics")

#' 
#' ### 1.5.4 Dust pollution
#' 
## ----introJusLoad--------------------
data("jus", package = "VSURF")

