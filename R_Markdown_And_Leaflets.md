---
title: "R Markdown and Leaflet"
author: "Krishna"
date: "January 21st 2019"
layout: page
output:
  html_document: 
    keep_md: yes
---

## Introduction
  Our objective in this assigment are as following
  
    - Create a web page using R Markdown that features a map created with Leaflet.
    - Host your webpage on either GitHub Pages, RPubs, or NeoCities.
    - Your webpage must contain the date that you created the document, and it must contain a map created with
      Leaflet. 
  
## Create webpage featuring Chesapeake Bay Bridge Tunnel

Load necessary libraries


```r
library(leaflet)
```

Create map for Chesapeake Bay Bridge Tunnel

Date : January, 21<sup>st</sup> 2019.


```r
cbbtlink <- c("<a href= 'http://www.cbbt.com/' >Chesapeake Bay Bridge Tunnel</a>")
cbbtmap <- leaflet() %>% addTiles() %>% addMarkers(lat=37.046138, lng=-76.062751, popup = cbbtlink)
cbbtmap
```

<!--html_preserve--><div id="htmlwidget-5783aa2c9f3282172b11" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-5783aa2c9f3282172b11">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[37.046138,-76.062751,null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},"<a href= 'http://www.cbbt.com/' >Chesapeake Bay Bridge Tunnel<\/a>",null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[37.046138,37.046138],"lng":[-76.062751,-76.062751]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->





