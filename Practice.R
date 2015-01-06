#This R script is to show how to query a database and work in R and GitHub.
# Help from Sarah Supp
# 2015-01-06

#install and load a new package
install.packages("RSQLite", dependencies=T)
library(RSQLite)

driver <- dbDriver("SQLite")
con <- dbConnect(driver, dbname="portal_mammals.sqlite")

results <- dbGetQuery(con, "SELECT species, wgt, year 
                      FROM surveys")

