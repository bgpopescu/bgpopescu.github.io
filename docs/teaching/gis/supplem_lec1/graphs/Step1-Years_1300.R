#Making maps of coefficients for the Eurobarometer
rm(list = ls())

#Step 1: Read Data
setwd("C:/Users/bogdanp/Dropbox/Chicago/Sixth Year 2016-2017/Organized Maps/Years/legacy_calculation")
setwd("/Users/bogdanp/Dropbox/Chicago/Sixth Year 2016-2017/Organized Maps/Years/legacy_calculation")




######
#1398#
######
boundaries_1398 <- readOGR(dsn="./legacy.gdb",
                           layer="all_country_boundaries_1398", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1398@data)
boundaries_1398<-boundaries_1398@data
boundaries_1398$SOVEREIGNT
boundaries_1398$Shape_Area

boundaries_1398 <- boundaries_1398 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1398$pct_ottoman<-boundaries_1398$Shape_Area/boundaries_1398$area*100

boundaries_1398$year<-1398
boundaries_1398$SOVEREIGNT

boundaries_1398$SOVEREIGNT<-as.character(boundaries_1398$SOVEREIGNT)



######
#1326#
######
library(rgdal)
library(dplyr)
boundaries_1326 <- readOGR(dsn="./legacy.gdb",
                    layer="all_country_boundaries_1326", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1326@data)
boundaries_1326<-boundaries_1326@data
boundaries_1326 <- boundaries_1326 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=sum(area))



boundaries_1326$pct_ottoman<-boundaries_1326$Shape_Area/boundaries_1326$area*100
boundaries_1326$year<-1326

#############
#Adding rows#
#############
boundaries_1326$SOVEREIGNT<-as.character(boundaries_1326$SOVEREIGNT)

boundaries_1326[1,1]
boundaries_1398[1,1]


boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1326)

boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
                                                                       0, boundaries_1398[2,3], 0, 1326)

boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
                                                                       0, boundaries_1398[3,3], 0, 1326)

boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1326)


boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1326)


boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1326)

boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1326)

boundaries_1326[nrow(boundaries_1326)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1326)

######
#1331#
######
boundaries_1331 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1331", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1331@data)
boundaries_1331<-boundaries_1331@data

boundaries_1331 <- boundaries_1331 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=sum(area))

boundaries_1331$pct_ottoman<-boundaries_1331$Shape_Area/boundaries_1331$area*100
boundaries_1331$year<-1331



#############
#Adding rows#
#############
boundaries_1331$SOVEREIGNT<-as.character(boundaries_1331$SOVEREIGNT)

boundaries_1331[1,1]
boundaries_1398[1,1]


boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1331)

boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
                                                                       0, boundaries_1398[2,3], 0, 1331)

boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
                                                                       0, boundaries_1398[3,3], 0, 1331)

boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1331)


boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1331)


boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1331)

boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1331)

boundaries_1331[nrow(boundaries_1331)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1331)



######
#1352#
######
boundaries_1352 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1352", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1352@data)
boundaries_1352<-boundaries_1352@data
boundaries_1352$SOVEREIGNT
boundaries_1352$Shape_Area

boundaries_1352 <- boundaries_1352 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1352$pct_ottoman<-boundaries_1352$Shape_Area/boundaries_1352$area*100
boundaries_1352$year<-1352

#############
#Adding rows#
#############
boundaries_1352$SOVEREIGNT<-as.character(boundaries_1352$SOVEREIGNT)

boundaries_1352[1,1]
boundaries_1398[1,1]


boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1352)

boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
                                                                       0, boundaries_1398[2,3], 0, 1352)

boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
                                                                       0, boundaries_1398[3,3], 0, 1352)

boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1352)


boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1352)


boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1352)

boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1352)

boundaries_1352[nrow(boundaries_1352)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1352)





######
#1354#
######
boundaries_1354 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1354", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1354@data)
boundaries_1354<-boundaries_1354@data
boundaries_1354$SOVEREIGNT
boundaries_1354$Shape_Area

boundaries_1354 <- boundaries_1354 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1354$pct_ottoman<-boundaries_1354$Shape_Area/boundaries_1354$area*100
boundaries_1354$year<-1354


#############
#Adding rows#
#############
boundaries_1354$SOVEREIGNT<-as.character(boundaries_1354$SOVEREIGNT)

boundaries_1354[1,1]
boundaries_1398[1,1]


boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1354)

boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
                                                                       0, boundaries_1398[2,3], 0, 1354)

boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
                                                                       0, boundaries_1398[3,3], 0, 1354)

boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1354)


boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1354)


boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1354)

boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1354)

boundaries_1354[nrow(boundaries_1354)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1354)



######
#1355#
######
boundaries_1355 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1355", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1355@data)
boundaries_1355<-boundaries_1355@data
boundaries_1355$SOVEREIGNT
boundaries_1355$Shape_Area

boundaries_1355 <- boundaries_1355 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1355$pct_ottoman<-boundaries_1355$Shape_Area/boundaries_1355$area*100
boundaries_1355$year<-1355


#############
#Adding rows#
#############
boundaries_1355$SOVEREIGNT<-as.character(boundaries_1355$SOVEREIGNT)

boundaries_1355[1,1]
boundaries_1398[1,1]


boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1355)

boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
                                                                       0, boundaries_1398[2,3], 0, 1355)

boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
                                                                       0, boundaries_1398[3,3], 0, 1355)

boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1355)


boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1355)


boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1355)

boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1355)

boundaries_1355[nrow(boundaries_1355)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1355)


######
#1360#
######
boundaries_1360 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1360", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1360@data)
boundaries_1360<-boundaries_1360@data
boundaries_1360$SOVEREIGNT
boundaries_1360$Shape_Area

boundaries_1360 <- boundaries_1360 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1360$pct_ottoman<-boundaries_1360$Shape_Area/boundaries_1360$area*100
boundaries_1360$year<-1360
boundaries_1398



#############
#Adding rows#
#############
boundaries_1360$SOVEREIGNT<-as.character(boundaries_1360$SOVEREIGNT)

boundaries_1360[1,1]
boundaries_1398[1,1]


boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1360)

#boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1360)

#boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1360)

boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1360)


boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1360)


boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1360)

boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1360)

boundaries_1360[nrow(boundaries_1360)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1360)



######
#1361#
######
boundaries_1361 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1361", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1361@data)
boundaries_1361<-boundaries_1361@data
boundaries_1361$SOVEREIGNT
boundaries_1361$Shape_Area

boundaries_1361 <- boundaries_1361 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1361$pct_ottoman<-boundaries_1361$Shape_Area/boundaries_1361$area*100
boundaries_1361$year<-1361

#############
#Adding rows#
#############
boundaries_1361$SOVEREIGNT<-as.character(boundaries_1361$SOVEREIGNT)

boundaries_1361[1,1]
boundaries_1398[1,1]


boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1361)

#boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1361)

#boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1361)

boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1361)


boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1361)


boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1361)

boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1361)

boundaries_1361[nrow(boundaries_1361)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1361)
boundaries_1360



######
#1362#
######
boundaries_1362 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1362", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1362@data)
boundaries_1362<-boundaries_1362@data
boundaries_1362$SOVEREIGNT
boundaries_1362$Shape_Area

boundaries_1362 <- boundaries_1362 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1362$pct_ottoman<-boundaries_1362$Shape_Area/boundaries_1362$area*100
boundaries_1362$year<-1362

#############
#Adding rows#
#############
boundaries_1362$SOVEREIGNT<-as.character(boundaries_1362$SOVEREIGNT)

boundaries_1362[1,1]
boundaries_1398[1,1]


boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1362)

#boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1362)

#boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1362)

boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1362)


boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1362)


boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1362)

boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1362)

boundaries_1362[nrow(boundaries_1362)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1362)





######
#1363#
######
boundaries_1363 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1363", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1363@data)
boundaries_1363<-boundaries_1363@data
boundaries_1363$SOVEREIGNT
boundaries_1363$Shape_Area

boundaries_1363 <- boundaries_1363 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1363$pct_ottoman<-boundaries_1363$Shape_Area/boundaries_1363$area*100
boundaries_1363$year<-1363


#############
#Adding rows#
#############
boundaries_1363$SOVEREIGNT<-as.character(boundaries_1363$SOVEREIGNT)

boundaries_1363[1,1]
boundaries_1398[1,1]


boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1363)

#boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1363)

#boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1363)

boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1363)


boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1363)


boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1363)

boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1363)

boundaries_1363[nrow(boundaries_1363)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1363)




######
#1364#
######
boundaries_1364 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1364", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1364@data)
boundaries_1364<-boundaries_1364@data
boundaries_1364$SOVEREIGNT
boundaries_1364$Shape_Area

boundaries_1364 <- boundaries_1364 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1364$pct_ottoman<-boundaries_1364$Shape_Area/boundaries_1364$area*100
boundaries_1364$year<-1364


#############
#Adding rows#
#############
boundaries_1364$SOVEREIGNT<-as.character(boundaries_1364$SOVEREIGNT)

boundaries_1364[1,1]
boundaries_1398[1,1]


boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1364)

#boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1364)

#boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1364)

boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1364)


boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1364)


boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1364)

boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1364)

boundaries_1364[nrow(boundaries_1364)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1364)





######
#1367#
######
boundaries_1367 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1367", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1367@data)
boundaries_1367<-boundaries_1367@data
boundaries_1367$SOVEREIGNT
boundaries_1367$Shape_Area

boundaries_1367 <- boundaries_1367 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1367$pct_ottoman<-boundaries_1367$Shape_Area/boundaries_1367$area*100
boundaries_1367$year<-1367


#############
#Adding rows#
#############
boundaries_1367$SOVEREIGNT<-as.character(boundaries_1367$SOVEREIGNT)

boundaries_1367[1,1]
boundaries_1398[1,1]


boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1367)

#boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1367)

#boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1367)

boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1367)


boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1367)


boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1367)

boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1367)

boundaries_1367[nrow(boundaries_1367)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1367)




######
#1371#
######
boundaries_1371 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1371", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1371@data)
boundaries_1371<-boundaries_1371@data
boundaries_1371$SOVEREIGNT
boundaries_1371$Shape_Area

boundaries_1371 <- boundaries_1371 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1371$pct_ottoman<-boundaries_1371$Shape_Area/boundaries_1371$area*100
boundaries_1371$year<-1371

#############
#Adding rows#
#############
boundaries_1371$SOVEREIGNT<-as.character(boundaries_1371$SOVEREIGNT)

boundaries_1371[1,1]
boundaries_1398[1,1]


boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1371)

#boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1371)

#boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1371)

boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1371)


boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1371)


boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1371)

boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1371)

boundaries_1371[nrow(boundaries_1371)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1371)




######
#1372#
######
boundaries_1372 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1372", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1372@data)
boundaries_1372<-boundaries_1372@data
boundaries_1372$SOVEREIGNT
boundaries_1372$Shape_Area

boundaries_1372 <- boundaries_1372 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1372$pct_ottoman<-boundaries_1372$Shape_Area/boundaries_1372$area*100
boundaries_1372$year<-1372


#############
#Adding rows#
#############
boundaries_1372$SOVEREIGNT<-as.character(boundaries_1372$SOVEREIGNT)

boundaries_1372[1,1]
boundaries_1398[1,1]


boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1372)

#boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1372)

#boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1372)

boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1372)


boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1372)


boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1372)

boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1372)

boundaries_1372[nrow(boundaries_1372)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1372)




######
#1377#
######
boundaries_1377 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1377", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1377@data)
boundaries_1377<-boundaries_1377@data
boundaries_1377$SOVEREIGNT
boundaries_1377$Shape_Area

boundaries_1377 <- boundaries_1377 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1377$pct_ottoman<-boundaries_1377$Shape_Area/boundaries_1377$area*100
boundaries_1377$year<-1377


#############
#Adding rows#
#############
boundaries_1377$SOVEREIGNT<-as.character(boundaries_1377$SOVEREIGNT)

boundaries_1377[1,1]
boundaries_1398[1,1]


boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1377)

#boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1377)

#boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1377)

boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1377)


boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1377)


boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1377)

boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1377)

boundaries_1377[nrow(boundaries_1377)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1377)






######
#1381#
######
boundaries_1381 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1381", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1381@data)
boundaries_1381<-boundaries_1381@data
boundaries_1381$SOVEREIGNT
boundaries_1381$Shape_Area

boundaries_1381 <- boundaries_1381 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1381$pct_ottoman<-boundaries_1381$Shape_Area/boundaries_1381$area*100
boundaries_1381$year<-1381


#############
#Adding rows#
#############
boundaries_1381$SOVEREIGNT<-as.character(boundaries_1381$SOVEREIGNT)

boundaries_1381[1,1]
boundaries_1398[1,1]


boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1381)

#boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1381)

#boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1381)

boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1381)


boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1381)


boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1381)

boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1381)

boundaries_1381[nrow(boundaries_1381)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1381)




######
#1382#
######
boundaries_1382 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1382", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1382@data)
boundaries_1382<-boundaries_1382@data
boundaries_1382$SOVEREIGNT
boundaries_1382$Shape_Area

boundaries_1382 <- boundaries_1382 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1382$pct_ottoman<-boundaries_1382$Shape_Area/boundaries_1382$area*100
boundaries_1382$year<-1382


#############
#Adding rows#
#############
boundaries_1382$SOVEREIGNT<-as.character(boundaries_1382$SOVEREIGNT)

boundaries_1382[1,1]
boundaries_1398[1,1]


boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1382)

#boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1382)

#boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1382)

boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1382)


boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1382)


boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1382)

boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1382)

boundaries_1382[nrow(boundaries_1382)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1382)




######
#1383#
######
boundaries_1383 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1383", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1383@data)
boundaries_1383<-boundaries_1383@data
boundaries_1383$SOVEREIGNT
boundaries_1383$Shape_Area

boundaries_1383 <- boundaries_1383 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1383$pct_ottoman<-boundaries_1383$Shape_Area/boundaries_1383$area*100
boundaries_1383$year<-1383


#############
#Adding rows#
#############
boundaries_1383$SOVEREIGNT<-as.character(boundaries_1383$SOVEREIGNT)

boundaries_1383[1,1]
boundaries_1398[1,1]


boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1383)

#boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1383)

#boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1383)

boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
                                                                       0, boundaries_1398[4,3], 0, 1383)


boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
                                                                       0, boundaries_1398[5,3], 0, 1383)


boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
                                                                       0, boundaries_1398[6,3], 0, 1383)

boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1383)

boundaries_1383[nrow(boundaries_1383)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1383)




######
#1385#
######
boundaries_1385 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1385", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1385@data)
boundaries_1385<-boundaries_1385@data
boundaries_1385$SOVEREIGNT
boundaries_1385$Shape_Area

boundaries_1385 <- boundaries_1385 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1385$pct_ottoman<-boundaries_1385$Shape_Area/boundaries_1385$area*100
boundaries_1385$year<-1385

#############
#Adding rows#
#############
boundaries_1385$SOVEREIGNT<-as.character(boundaries_1385$SOVEREIGNT)

boundaries_1385[1,1]
boundaries_1398[1,1]


boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1385)

#boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1385)

#boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1385)

#boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1385)


#boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1385)


#boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1385)

boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1385)

boundaries_1385[nrow(boundaries_1385)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1385)




######
#1386#
######
boundaries_1386 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1386", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1386@data)
boundaries_1386<-boundaries_1386@data
boundaries_1386$SOVEREIGNT
boundaries_1386$Shape_Area

boundaries_1386 <- boundaries_1386 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1386$pct_ottoman<-boundaries_1386$Shape_Area/boundaries_1386$area*100
boundaries_1386$year<-1386



#############
#Adding rows#
#############
boundaries_1386$SOVEREIGNT<-as.character(boundaries_1386$SOVEREIGNT)

boundaries_1386[1,1]
boundaries_1398[1,1]


boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1386)

#boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1386)

#boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1386)

#boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1386)


#boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1386)


#boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1386)

boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1386)

boundaries_1386[nrow(boundaries_1386)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1386)




######
#1387#
######
boundaries_1387 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1387", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1387@data)
boundaries_1387<-boundaries_1387@data
boundaries_1387$SOVEREIGNT
boundaries_1387$Shape_Area

boundaries_1387 <- boundaries_1387 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1387$pct_ottoman<-boundaries_1387$Shape_Area/boundaries_1387$area*100
boundaries_1387$year<-1387


#############
#Adding rows#
#############
boundaries_1387$SOVEREIGNT<-as.character(boundaries_1387$SOVEREIGNT)

boundaries_1387[1,1]
boundaries_1398[1,1]


boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1387)

#boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1387)

#boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1387)

#boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1387)


#boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1387)


#boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1387)

boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1387)

boundaries_1387[nrow(boundaries_1387)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1387)






######
#1389#
######
boundaries_1389 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1389", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1389@data)
boundaries_1389<-boundaries_1389@data
boundaries_1389$SOVEREIGNT
boundaries_1389$Shape_Area

boundaries_1389 <- boundaries_1389 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1389$pct_ottoman<-boundaries_1389$Shape_Area/boundaries_1389$area*100
boundaries_1389$year<-1389


#############
#Adding rows#
#############
boundaries_1389$SOVEREIGNT<-as.character(boundaries_1389$SOVEREIGNT)

boundaries_1389[1,1]
boundaries_1398[1,1]


boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1389)

#boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1389)

#boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1389)

#boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1389)


#boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1389)


#boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1389)

boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1389)

boundaries_1389[nrow(boundaries_1389)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1389)







######
#1391#
######
boundaries_1391 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1391", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1391@data)
boundaries_1391<-boundaries_1391@data
boundaries_1391$SOVEREIGNT
boundaries_1391$Shape_Area

boundaries_1391 <- boundaries_1391 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1391$pct_ottoman<-boundaries_1391$Shape_Area/boundaries_1391$area*100
boundaries_1391$year<-1391


#############
#Adding rows#
#############
boundaries_1391$SOVEREIGNT<-as.character(boundaries_1391$SOVEREIGNT)

boundaries_1391[1,1]
boundaries_1398[1,1]


boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1391)

#boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1391)

#boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1391)

#boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1391)


#boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1391)


#boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1391)

boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1391)

boundaries_1391[nrow(boundaries_1391)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1391)





######
#1392#
######
boundaries_1392 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1392", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1392@data)
boundaries_1392<-boundaries_1392@data
boundaries_1392$SOVEREIGNT
boundaries_1392$Shape_Area

boundaries_1392 <- boundaries_1392 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1392$pct_ottoman<-boundaries_1392$Shape_Area/boundaries_1392$area*100
boundaries_1392$year<-1392


#############
#Adding rows#
#############
boundaries_1392$SOVEREIGNT<-as.character(boundaries_1392$SOVEREIGNT)

boundaries_1392[1,1]
boundaries_1398[1,1]


boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1392)

#boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1392)

#boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1392)

#boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1392)


#boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1392)


#boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1392)

boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1392)

boundaries_1392[nrow(boundaries_1392)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1392)






######
#1393#
######
boundaries_1393 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1393", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1393@data)
boundaries_1393<-boundaries_1393@data
boundaries_1393$SOVEREIGNT
boundaries_1393$Shape_Area

boundaries_1393 <- boundaries_1393 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1393$pct_ottoman<-boundaries_1393$Shape_Area/boundaries_1393$area*100
boundaries_1393$year<-1393


#############
#Adding rows#
#############
boundaries_1393$SOVEREIGNT<-as.character(boundaries_1393$SOVEREIGNT)

boundaries_1393[1,1]
boundaries_1398[1,1]


boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1393)

#boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1393)

#boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1393)

#boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1393)


#boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1393)


#boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1393)

boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1393)

boundaries_1393[nrow(boundaries_1393)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1393)






######
#1394#
######
boundaries_1394 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1394", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1394@data)
boundaries_1394<-boundaries_1394@data
boundaries_1394$SOVEREIGNT
boundaries_1394$Shape_Area

boundaries_1394 <- boundaries_1394 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1394$pct_ottoman<-boundaries_1394$Shape_Area/boundaries_1394$area*100

boundaries_1394$year<-1394

#############
#Adding rows#
#############
boundaries_1394$SOVEREIGNT<-as.character(boundaries_1394$SOVEREIGNT)

boundaries_1394[1,1]
boundaries_1398[1,1]


boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[1,1])),
                                                                       0, boundaries_1398[1,3], 0, 1394)

#boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[2,1])),
#                                                                       0, boundaries_1398[2,3], 0, 1394)

#boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[3,1])),
#                                                                       0, boundaries_1398[3,3], 0, 1394)

#boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[4,1])),
#                                                                       0, boundaries_1398[4,3], 0, 1394)


#boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[5,1])),
#                                                                       0, boundaries_1398[5,3], 0, 1394)


#boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[6,1])),
#                                                                       0, boundaries_1398[6,3], 0, 1394)

boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[7,1])),
                                                                       0, boundaries_1398[7,3], 0, 1394)

boundaries_1394[nrow(boundaries_1394)+1,] <- c(as.character(unlist(boundaries_1398[9,1])),
                                                                       0, boundaries_1398[9,3], 0, 1394)






######
#1396#
######
boundaries_1396 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1396", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1396@data)
boundaries_1396<-boundaries_1396@data
boundaries_1396$SOVEREIGNT
boundaries_1396$Shape_Area

boundaries_1396 <- boundaries_1396 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1396$pct_ottoman<-boundaries_1396$Shape_Area/boundaries_1396$area*100
boundaries_1396$year<-1396

boundaries_1396$SOVEREIGNT<-as.character(boundaries_1396$SOVEREIGNT)


######
#1397#
######
boundaries_1397 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1397", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1397@data)
boundaries_1397<-boundaries_1397@data
boundaries_1397$SOVEREIGNT
boundaries_1397$Shape_Area

boundaries_1397 <- boundaries_1397 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1397$pct_ottoman<-boundaries_1397$Shape_Area/boundaries_1397$area*100
boundaries_1397$year<-1397

boundaries_1397$SOVEREIGNT<-as.character(boundaries_1397$SOVEREIGNT)


######
#1398#
######
boundaries_1398 <- readOGR(dsn="./legacy.gdb",
                                       layer="all_country_boundaries_1398", use_iconv = TRUE, encoding = "UTF-8")

names(boundaries_1398@data)
boundaries_1398<-boundaries_1398@data
boundaries_1398$SOVEREIGNT
boundaries_1398$Shape_Area

boundaries_1398 <- boundaries_1398 %>% 
  group_by(SOVEREIGNT) %>%
  summarise(Shape_Area = sum(Shape_Area), area=max(area)) 

boundaries_1398$pct_ottoman<-boundaries_1398$Shape_Area/boundaries_1398$area*100

boundaries_1398$year<-1398
boundaries_1398$SOVEREIGNT

boundaries_1398$SOVEREIGNT<-as.character(boundaries_1398$SOVEREIGNT)




#boundaries_1326
boundaries_1327<-boundaries_1326
boundaries_1327$year<-1327
boundaries_1328<-boundaries_1326
boundaries_1328$year<-1328
boundaries_1329<-boundaries_1326
boundaries_1329$year<-1329
boundaries_1330<-boundaries_1326
boundaries_1330$year<-1330

#boundaries_1331
boundaries_1332<-boundaries_1331
boundaries_1332$year<-1332
boundaries_1333<-boundaries_1331
boundaries_1333$year<-1333
boundaries_1334<-boundaries_1331
boundaries_1334$year<-1334
boundaries_1335<-boundaries_1331
boundaries_1335$year<-1335
boundaries_1336<-boundaries_1331
boundaries_1336$year<-1336
boundaries_1337<-boundaries_1331
boundaries_1337$year<-1337
boundaries_1338<-boundaries_1331
boundaries_1338$year<-1338
boundaries_1339<-boundaries_1331
boundaries_1339$year<-1339
boundaries_1340<-boundaries_1331
boundaries_1340$year<-1340
boundaries_1341<-boundaries_1331
boundaries_1341$year<-1341
boundaries_1342<-boundaries_1331
boundaries_1342$year<-1342
boundaries_1343<-boundaries_1331
boundaries_1343$year<-1343
boundaries_1344<-boundaries_1331
boundaries_1344$year<-1344
boundaries_1345<-boundaries_1331
boundaries_1345$year<-1345
boundaries_1346<-boundaries_1331
boundaries_1346$year<-1346
boundaries_1347<-boundaries_1331
boundaries_1347$year<-1347
boundaries_1348<-boundaries_1331
boundaries_1348$year<-1348
boundaries_1349<-boundaries_1331
boundaries_1349$year<-1349
boundaries_1350<-boundaries_1331
boundaries_1350$year<-1350
boundaries_1351<-boundaries_1331
boundaries_1351$year<-1351


#boundaries_1352
boundaries_1353<-boundaries_1352
boundaries_1353$year<-1353

#boundaries_1355
boundaries_1356<-boundaries_1355
boundaries_1356$year<-1355
boundaries_1357<-boundaries_1355
boundaries_1357$year<-1357
boundaries_1358<-boundaries_1355
boundaries_1358$year<-1358
boundaries_1359<-boundaries_1355
boundaries_1359$year<-1359

#boundaries_1364
boundaries_1365<-boundaries_1364
boundaries_1365$year<-1365
boundaries_1366<-boundaries_1364
boundaries_1366$year<-1366
boundaries_1367<-boundaries_1364
boundaries_1367$year<-1367
boundaries_1368<-boundaries_1364
boundaries_1368$year<-1368
boundaries_1369<-boundaries_1364
boundaries_1369$year<-1369
boundaries_1370<-boundaries_1364
boundaries_1370$year<-1370

#boundaries_1372
boundaries_1373<-boundaries_1372
boundaries_1373$year<-1373
boundaries_1374<-boundaries_1372
boundaries_1374$year<-1374
boundaries_1375<-boundaries_1372
boundaries_1375$year<-1375
boundaries_1376<-boundaries_1372
boundaries_1376$year<-1376

#boundaries_1377
boundaries_1378<-boundaries_1377
boundaries_1378$year<-1378
boundaries_1379<-boundaries_1377
boundaries_1379$year<-1379
boundaries_1380<-boundaries_1377
boundaries_1380$year<-1380


#boundaries_1383
boundaries_1384<-boundaries_1383
boundaries_1384$year<-1384

#boundaries_1387
boundaries_1388<-boundaries_1387
boundaries_1388$year<-1388

#boundaries_1389
boundaries_1390<-boundaries_1389
boundaries_1390$year<-1389

#boundaries_1394
boundaries_1395<-boundaries_1394
boundaries_1395$year<-1395

#boundaries_1398
boundaries_1399<-boundaries_1398
boundaries_1399$year<-1399

boundaries_1326$year



dfs <- Filter(function(x) is(x, "data.frame"), mget(ls()))
final1300 = bind_rows(dfs)
rm(list = dfs)


rm(list = ls()[grep("boundaries", ls())])


# final13<-bind_rows(boundaries_1326, boundaries_1331, boundaries_1352,
#                    boundaries_1354, boundaries_1355, boundaries_1360,
#                    boundaries_1362, boundaries_1363, boundaries_1364,
#                    boundaries_1367, boundaries_1371, boundaries_1372,
#                    boundaries_1377, boundaries_1381, boundaries_1382,
#                    boundaries_1383, boundaries_1385, boundaries_1386,
#                    boundaries_1387, boundaries_1389, boundaries_1391,
#                    boundaries_1392, boundaries_1393, boundaries_1394,
#                    boundaries_1396, boundaries_1397, boundaries_1398)
# 
# 



library("ggplot2")
plot_13th<-ggplot(final1300, aes(x = year, y = pct_ottoman)) + 
  geom_line(aes(color = SOVEREIGNT), size = 1) +
  theme_minimal()+
  theme_bw()+
  labs(x = "Year", y="Pct. Ottoman")+
  theme(plot.title = element_text(hjust = 0.5, size=25),
        axis.text.x=element_text(size=13, angle=0, vjust = 0.65),
        axis.text=element_text(size=14),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20))+
  theme(legend.box.background = element_rect(fill='white'),
        legend.background = element_blank(),
        legend.text=element_text(size=12))


plot_13th

library("lemon")
plot_13th<-reposition_legend(plot_13th, 'top left')
plot_13th

ggsave(plot_13th, file="./plot_13th.jpg", height=20, width=20, units = "cm", dpi=350)



