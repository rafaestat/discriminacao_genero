

library(readxl)
DADOS_TESE_MUNICIPIOS <- read_excel("DADOS_TESE_MUNICIPIOS.xlsx")

DADOS_TESE_MUNICIPIOS = DADOS_TESE_MUNICIPIOS[!is.na(DADOS_TESE_MUNICIPIOS$DISC_LM_07),]

quartil_discr = as.numeric(cut(DADOS_TESE_MUNICIPIOS$DISC_LM_07,right = F,
                               breaks = c(-Inf,quantile(DADOS_TESE_MUNICIPIOS$DISC_LM_07))))-1

quartil_cresc = as.numeric(cut(DADOS_TESE_MUNICIPIOS$ln_cresc_pib_percap,right = F,
                               breaks = c(Inf,quantile(DADOS_TESE_MUNICIPIOS$ln_cresc_pib_percap))))-1


library(leaflet)
leaflet(data = DADOS_TESE_MUNICIPIOS) %>% addTiles() %>%
  addMarkers(~lon, ~lat, popup = ~as.character(NM_MUN_PADRAO), label = ~as.character(NM_MUN_PADRAO))

leaflet(DADOS_TESE_MUNICIPIOS) %>% addTiles() %>% 
  addMarkers(~lon, ~lat,  clusterOptions = markerClusterOptions())


m =  leaflet(DADOS_TESE_MUNICIPIOS[quartil_discr==1,]) 
m =  addTiles(m) 
m =  addMarkers(m ,~lon, ~lat,  clusterOptions = markerClusterOptions())
m

library(ggmap)
library(sp)
map <- qmap('Brasil', zoom = 4, maptype = 'hybrid')
coords <- cbind(Longitude = DADOS_TESE_MUNICIPIOS$lon, Latitude = DADOS_TESE_MUNICIPIOS$lat)
coords.pts <- SpatialPointsDataFrame(coords, DADOS_TESE_MUNICIPIOS[, -(4:5)], proj4string = CRS("+init=epsg:4326"))
map
par(mfrow = c(4,1))

map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_discr==1,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)
map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_discr==2,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)
map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_discr==3,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)
map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_discr==4,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)


map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_cresc==1,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)
map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_cresc==2,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)
map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_cresc==3,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)
map + geom_point(data = DADOS_TESE_MUNICIPIOS[quartil_cresc==4,], aes(x = lon, y = lat), color="red", size=3, alpha=0.5)

