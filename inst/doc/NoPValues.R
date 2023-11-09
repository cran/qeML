## ----include = FALSE----------------------------------------------------------
library(tufte)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(qeML)  

## -----------------------------------------------------------------------------
data(lsa)
names(lsa)

## -----------------------------------------------------------------------------
w <- lm(lsat ~ .,lsa)  # predict lsat from all other variables
summary(w)

## -----------------------------------------------------------------------------
w1 <- lm(lsat ~ .+race1:ugpa,lsa)  # add interaction 
summary(w1)

## -----------------------------------------------------------------------------
typx <- lsa[1,-5]  # set up an example case
predict(w,typx)  # no-interaction model
predict(w1,typx)  # with-interaction model

