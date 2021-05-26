library(maptools)
library(ggplot2)
library(plyr)
library(mapdata)
map("world")
a = map("world")
b = map_data("world")
mydata <- read.table("C:/Users/ASUS/Desktop/world.csv", header=T, sep=",")
world_data <- join(b, mydata, type="full")
ggplot(world_data,aes(x=long,y=lat,group=group,fill=number))+
  labs(title="ÊÀ½çÒßÇéÈÈÁ¦Í¼",
       x="", y="", fill="ÈËÊý")+
  geom_polygon(colour="grey40")+
  scale_fill_gradient(low="white",high="red")+
  theme(
    panel.grid=element_blank(),
    panel.background=element_blank(),
    axis.text=element_blank(),
    axis.ticks=element_blank(),
    axis.title=element_blank(),
    legend.position=c(0.2,0.3)
  )
