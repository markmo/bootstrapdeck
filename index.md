---
title       : Bootstrapping
subtitle    : to estimate population statistics
author      : Mark Mo
job         : 
framework   : shower        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, mathjax, shiny, interactive]            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: "libraries/polycharts"}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What is bootstrapping?

* "To pull oneself up by one's bootstraps"
* A goal of inferential statistics is to determine the value of a parameter of a population, such as the mean or median
* If we can't make assumptions about the shape of the population, all we have is the sample data
* Instead, lets resample from the original sample (with replacement) and learn from that
* This seems impossible to learn more information from the same set of data, but it works

---

## Computer Science + Statistics = Data Science?

* Bootstrapping involves a relatively simple procedure, but repeated so many times that using a computer to perform the calculations is necessary
* A new sample of a given size is selected from the original sample with replacement
* This is repeated many times to generate a distribution of the sample statistic
* A confidence interval of the estimated parameter can be obtained from this distribution using the formula:

$$\bar x_b \pm z * SE_b$$

---

## The Bootstrapping Demo App

<div class="row-fluid">
  <div class="span4">
    <form class="well">
      <div>
        <label class="control-label" for="sample_size">Sample size:</label>
        <input id="sample_size" type="slider" name="sample_size" value="30" class="jslider" data-from="1" data-to="50" data-step="1" data-skin="plastic" data-round="FALSE" data-locale="us" data-format="#,##0.#####" data-smooth="FALSE"/>
      </div>
    </form>
  </div>
  <div class="span8">
    <div id="myChart" class="shiny-html-output rChart polycharts"></div>
  </div>
</div>

---

* This Shiny App was developed as a demonstration to help acquire the intuition of what the procedure is doing
* https://markmo.shinyapps.io/bootstrapdemo/






