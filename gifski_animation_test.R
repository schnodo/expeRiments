setwd("~/../Desktop")
library(ggplot2)
library(gganimate)
library(gifski)
p <- ggplot(mpg, aes(y = manufacturer, fill = stat(count)))+
  geom_bar()+
  transition_reveal(along = stat(count))

animate(p, renderer = gifski_renderer())
anim_save("gifski animation test b.gif")
