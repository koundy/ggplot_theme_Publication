

theme_Publication <- function(base_size=14, base_family="sans") {
      library(grid)
      library(ggthemes)
      (theme_foundation(base_size=base_size, base_family=base_family)
       + theme(plot.title = element_text(face = "bold",
                                         size = rel(1.2), hjust = 0.5, margin = margin(0,0,20,0)),
               text = element_text(),
               panel.background = element_rect(colour = NA),
               plot.background = element_rect(colour = NA),
               panel.border = element_rect(colour = NA),
               axis.title = element_text(face = "bold",size = rel(1)),
               axis.title.y = element_text(angle=90,vjust =2),
               axis.title.x = element_text(vjust = -0.2),
               axis.text = element_text(), 
               axis.line.x = element_line(colour="black"),
               axis.line.y = element_line(colour="black"),
               axis.ticks = element_line(),
               panel.grid.major = element_line(colour="#f0f0f0"),
               panel.grid.minor = element_blank(),
               legend.key = element_rect(colour = NA),
               legend.position = "bottom",
               legend.direction = "horizontal",
               legend.box = "vetical",
               legend.key.size= unit(0.5, "cm"),
               #legend.margin = unit(0, "cm"),
               legend.title = element_text(face="italic"),
               plot.margin=unit(c(10,5,5,5),"mm"),
               strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
               strip.text = element_text(face="bold")
       ))
      
}

scale_fill_Publication <- function(...){
      library(scales)
      discrete_scale("fill","Publication",manual_pal(values = c("#386cb0","#f87f01","#7fc97f","#ef3b2c","#feca01","#a6cee3","#fb9a99","#984ea3","#8C591D")), ...)
      
}

scale_colour_Publication <- function(...){
      library(scales)
      discrete_scale("colour","Publication",manual_pal(values = c("#386cb0","#f87f01","#7fc97f","#ef3b2c","#feca01","#a6cee3","#fb9a99","#984ea3","#8C591D")), ...)
      
}


### Dark theme for ggplot plots

theme_dark_grey <- function(base_size=14, base_family="sans") {
   library(grid)
   library(ggthemes)
   (theme_foundation(base_size=base_size, base_family=base_family)
      + theme(plot.title = element_text(face = "bold", colour = '#ffffb3',
                                        size = rel(1.2), hjust = 0.5, margin = margin(0,0,20,0)),
              text = element_text(),
              panel.background = element_rect(colour = NA, fill = 'grey20'),
              plot.background = element_rect(colour = NA, fill = '#262626'),
              panel.border = element_rect(colour = NA),
              axis.title = element_text(face = "bold",size = rel(1), colour = 'white'),
              axis.title.y = element_text(angle=90,vjust =2),
              axis.title.x = element_text(vjust = -0.2),
              axis.text = element_text(colour = 'grey70'), 
              axis.line.x = element_line(colour="grey70"),
              axis.line.y = element_line(colour="grey70"),
              axis.ticks = element_line(colour="grey70"),
              panel.grid.major = element_line(colour="#262626"),
              panel.grid.minor = element_blank(),
              legend.background = element_rect(fill ='#262626'),
              legend.text = element_text(color = 'white'),
              legend.key = element_rect(colour = NA, fill = '#262626'),
              legend.position = "bottom",
              legend.direction = "horizontal",
              legend.box = "vetical",
              legend.key.size= unit(0.5, "cm"),
              #legend.margin = unit(0, "cm"),
              legend.title = element_text(face="italic", colour = 'white'),
              plot.margin=unit(c(10,5,5,5),"mm"),
              strip.background=element_rect(colour="#2D3A4C",fill="#2D3A4C"),
              strip.text = element_text(face="bold", colour = 'white')
      ))
}

scale_fill_Publication_dark <- function(...){
   library(scales)
   discrete_scale("fill","Publication",manual_pal(values = c("#fbb4ae","#b3cde3","#ccebc5","#decbe4","#fed9a6","#ffffcc","#e5d8bd","#fddaec","#f2f2f2")), ...)
   
}

scale_colour_Publication_dark <- function(...){
   library(scales)
   discrete_scale("colour","Publication",manual_pal(values = c("#fbb4ae","#b3cde3","#ccebc5","#decbe4","#fed9a6","#ffffcc","#e5d8bd","#fddaec","#f2f2f2")), ...)
   
}


# theme_transparent <- function(base_size=14, base_family="sans") {
#    library(grid)
#    library(ggthemes)
#    (theme_foundation(base_size=base_size, base_family=base_family)
#       + theme(plot.title = element_text(face = "bold", colour = '#ffffb3',
#                                         size = rel(1.2), hjust = 0.5),
#               text = element_text(),
#               panel.background = element_rect(colour = NA, fill = 'transparent'),
#               plot.background = element_rect(colour = NA, fill = 'transparent'),
#               panel.border = element_rect(colour = NA),
#               axis.title = element_text(face = "bold",size = rel(1), colour = 'white'),
#               axis.title.y = element_text(angle=90,vjust =2),
#               axis.title.x = element_text(vjust = -0.2),
#               axis.text = element_text(colour = 'grey70'), 
#               axis.line.x = element_line(colour="grey70"),
#               axis.line.y = element_line(colour="grey70"),
#               axis.ticks = element_line(colour="grey70"),
#               panel.grid.major = element_line(colour="#262626"),
#               panel.grid.minor = element_blank(),
#               legend.background = element_rect(fill = 'transparent'),
#               legend.text = element_text(color = 'white'),
#               legend.key = element_rect(colour = NA, fill = 'grey20'),
#               legend.position = "bottom",
#               legend.direction = "horizontal",
#               legend.box = "vetical",
#               legend.key.size= unit(0.5, "cm"),
#               #legend.margin = unit(0, "cm"),
#               legend.title = element_text(face="italic", colour = 'white'),
#               plot.margin=unit(c(10,5,5,5),"mm"),
#               strip.background=element_rect(colour="#2D3A4C",fill="#2D3A4C"),
#               strip.text = element_text(face="bold", colour = 'white')
#       ))
# }

theme_dark_blue <- function(base_size=14, base_family="sans") {
   library(grid)
   library(ggthemes)
   (theme_foundation(base_size=base_size, base_family=base_family)
      + theme(plot.title = element_text(face = "bold", colour = '#ffffb3',
                                        size = rel(1.2), hjust = 0.5, margin = margin(0,0,20,0)),
              text = element_text(),
              panel.background = element_rect(colour = NA, fill = '#282C33'),
              plot.background = element_rect(colour = NA, fill = '#282C33'),
              panel.border = element_rect(colour = NA),
              axis.title = element_text(face = "bold",size = rel(1), colour = 'white'),
              axis.title.y = element_text(angle=90,vjust =2),
              axis.title.x = element_text(vjust = -0.2),
              axis.text = element_text(colour = 'grey70'), 
              axis.line.x = element_line(colour="grey70"),
              axis.line.y = element_line(colour="grey70"),
              axis.ticks = element_line(colour="grey70"),
              panel.grid.major = element_line(colour="#343840"),
              panel.grid.minor = element_blank(),
              legend.background = element_rect(fill ='#282C33'),
              legend.text = element_text(color = 'white'),
              legend.key = element_rect(colour = NA, fill = '#282C33'),
              legend.position = "bottom",
              legend.direction = "horizontal",
              legend.box = "vetical",
              legend.key.size= unit(0.5, "cm"),
              #legend.margin = unit(0, "cm"),
              legend.title = element_text(face="italic", colour = 'white'),
              plot.margin=unit(c(10,5,5,5),"mm"),
              strip.background=element_rect(colour="#2D3A4C",fill="#2D3A4C"),
              strip.text = element_text(face="bold", colour = 'white')
      ))
}