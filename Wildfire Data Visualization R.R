library(ggplot2)
library(dplyr)

getwd()
setwd("/Users/sue/Desktop")

fire <- read.csv("California_Fire_Incidents.csv")

fire <- fire %>% select(AcresBurned,ArchiveYear,CalFireIncident,
                        Counties,CrewsInvolved,Engines,Extinguished,Fatalities,
                        Helicopters,Injuries,Latitude,Longitude,
                        PersonnelInvolved,Started,StructuresDamaged,StructuresDestroyed,
                        StructuresEvacuated,StructuresThreatened,WaterTenders,Featured)

fire <- fire %>% filter(Counties!="State of Nevada") %>% filter(Counties!="State of Oregon")

# data cleaning 

View(fire)

fire$Extinguished <- as.POSIXct(fire$Extinguished,format="%Y-%m-%dT%H:%M:%SZ")
fire$Started <- as.POSIXct(fire$Started,format="%Y-%m-%dT%H:%M:%SZ")

fire1 <- fire %>% mutate(duration = as.numeric(Extinguished-Started)/86400)
fire1 <- fire1 %>% filter(duration >=0 & duration<=200)

View(fire1)


#fire duration visualization 

baseplot <- fire1 %>%
  ggplot(aes(x=factor(ArchiveYear), y=duration)) 

library(ggforce)
baseplot + geom_violin() + geom_sina(size=.5) +  labs(title = "Fire Duration Distribution 2013 - 2019", 
                                               x = "Archive Year", y = "Fire Duration in Days")


# startplot 

fire5 <- fire %>% group_by(Counties) %>% 
  summarise(total = n()) %>% arrange(desc(total)) %>% head(5)

top5_c = fire5$Counties
fire5 <- fire %>% filter(Counties %in% top5_c) %>% select(AcresBurned,ArchiveYear,Counties)

fire6 <- fire5 %>% group_by(Counties,ArchiveYear) %>% summarise(acres = sum(AcresBurned)) %>% na.omit()

library(tidyr)
library(dplyr)
library(tibble)
pivot_fire <- pivot_wider(fire6, id_cols = c(Counties), names_from = ArchiveYear, values_from = acres)
View(pivot_fire)

pivot_fire <- pivot_fire %>% column_to_rownames(var="Counties")
View(pivot_fire)

pivot_fire <- pivot_fire[,rev(names(pivot_fire))]
stars(pivot_fire,draw.segments = TRUE,len=0.8,main="CA Top 5 Counties AcresBurned by Year",
      full = FALSE,labels=rownames(pivot_fire),key.loc = c(0,5),flip.labels =FALSE)

