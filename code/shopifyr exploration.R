library(tidyverse)
installed.packages()
install.packages("devtools")
devtools:::install_github("charliebone/shopifyr")
library(shopifyr)

shopURL <- "jacobsen-salt.myshopify.com"
# this password is the Shopify API private app password or permanent access token
# it is not the shop's password
password <- "API password"
jsc_shop <- ShopifyShop$new(shopURL, password)

# view shop information
jsc_shop$shopInfo       # displays cached shop information
jsc_shop$getShop()      # fetches current shop information from server