---
title       : Developing Data Products Presentation
subtitle    : Auto Performance Check  
author      : Vivek Singhal
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : standalone # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

* The purpose of this slideshow is to illustrate a simple but useful Car App on Shiny
* Many Car enthusiasts are enamored with understanding performance of cars across makes and models
* This app plays a small part in addressing that interest

---
## Data

* The data used is an R dataset "mtcars"
* This data was extracted from the 1974 Motor Trend US magazine and comprises of information for 32 automobilies from 1973-1974
* More information on the dataset can be found below:
* https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

---
## App Information

* The indicators available for manipulation include: displacement, gears, cyclinders.
* The results include a table of  a max top 5 cars by MPG and mean MPG and HP of the cars outputted.
* The app is hosted on shiny server and can be found below:
* https://vsinghal12.shinyapps.io/DataProdShinyApp/

---
## Sample Chart Output
* Below is a sample header output that will be generated from the shiny app


```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```
