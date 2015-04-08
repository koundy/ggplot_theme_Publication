
# ggplot theme for publication ready Plots
 
A ggplot theme which creates clean and simple graphics for plotting.

ggplot2 by [Hadley](https://github.com/hadley) is a very good package for data visualization in R. However the default plots made by the package requires some formatting before we can send them for publication. The package called [ggthemes](https://github.com/jrnold/ggthemes) was written by [Jeffrey](https://github.com/jrnold) for this purpose and provides some excellent themes. But I want to try myself and improvise on the this. So, I have written my own theme (ofcourse with the help of in-built functions from ggthemes thanks to Jeffrey). My main problems with the aesthetics of default ggplot are

* Plot background
* Title and axes labels Font and size
* Axes themselves
* Axis ticks
* Colors
* Legend position

So, here I tried to fix each one of them and create my own theme and color palette. This theme will produce plots with bold axes, bold axes labels and legend at the bottom leaving extra space for the plotting area. The color palette is also designed with the help of [color brewer](http://colorbrewer2.org/) using bold and contrasting colors so, one can easily distinguish any two colors . Feel free to comment and enjoy the theme if you like it.

# Examples

```r
library(ggplot2)
library(gridExtra)
library(ggthemes)
```
Here, I will show comparision between default ggplot2 graphics and this theme.

## Scatter Plot

```r
Scatter <- ggplot(mtcars, aes(mpg,disp,color=factor(carb))) + geom_point(size=3) + labs(title="Scatter Plot")

grid.arrange(Scatter,(Scatter +scale_colour_Publication()+ theme_Publication()),nrow=1)
```

![](https://github.com/koundy/ggplot_theme_Publication/blob/master/ggplot_theme_Publication_files/figure-html/unnamed-chunk-2-1.png) 

## Bar Plot

```r
Bar <- ggplot(mtcars, aes(factor(carb),fill=factor(carb))) + geom_bar(alpha=0.7) + labs(title="Bar Plot")

grid.arrange(Bar,(Bar + scale_fill_Publication() +theme_Publication()),nrow=1)
```

![](https://github.com/koundy/ggplot_theme_Publication/blob/master/ggplot_theme_Publication_files/figure-html/unnamed-chunk-2-2.png) 

## Bubble Plot

```r
Bubble <- ggplot(mtcars, aes(mpg,disp,color=factor(carb),size=hp)) + geom_point(alpha=0.7) + labs(title="Bubble Plot") + scale_size_continuous(range = c(3,10))

grid.arrange(Bubble,(Bubble +scale_colour_Publication()+ theme_Publication()),nrow=1)
```

![](https://github.com/koundy/ggplot_theme_Publication/blob/master/ggplot_theme_Publication_files/figure-html/unnamed-chunk-2-3.png) 

## Line Plot

```r
library(reshape2)
mtcars$Index <- 1:nrow(mtcars)
dat <- melt(mtcars,id.vars = c("Index"),measure.vars = c("drat","wt"))
Line <- ggplot(dat,aes(Index,value,colour=variable))+geom_line(size=1.3) + labs(title="Line Plot") 
grid.arrange(Line,(Line +scale_colour_Publication()+ theme_Publication()),nrow=1)
```

![](https://github.com/koundy/ggplot_theme_Publication/blob/master/ggplot_theme_Publication_files/figure-html/unnamed-chunk-2-4.png) 

## Plots with Facets

```r
P <- ggplot(data = mpg,aes(cty, hwy,color=class))+geom_point(size=3) + facet_wrap(~ manufacturer,scales="free")+
      labs(title="Plot With Facets")
P
```

![](https://github.com/koundy/ggplot_theme_Publication/blob/master/ggplot_theme_Publication_files/figure-html/unnamed-chunk-3-1.png) 

```r
P +scale_colour_Publication()+ theme_Publication()
```

![](https://github.com/koundy/ggplot_theme_Publication/blob/master/ggplot_theme_Publication_files/figure-html/unnamed-chunk-3-2.png) 
