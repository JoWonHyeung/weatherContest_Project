ta <- dbGetQuery(conn, "SELECT * FROM db_sfc_ta_dd WHERE stn_id = 245")
ta$db_sfc_ta_dd.tma <- as.Date(ta$db_sfc_ta_dd.tma)
newdf <- ta["2010-06-01" <= ta$db_sfc_ta_dd.tma & ta$db_sfc_ta_dd.tma <= "2011-10-05",]
View(newdf)


