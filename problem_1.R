library(data.table)
library(chron)
sink("output.txt")
#reading data and printing no of users
data = read.csv("test.csv ", header = TRUE)
data[,c("user_id")]
length(unique(nf))
#most popular product and category
setDT(data)[, .N, by = .(product_id)][order(-N)]
setDT(data)[, .N, by = .(category)][order(-N)]
df= data[,c("user_id","price")]
#avg price per customer
aggregate(df ,by = list(df$user_id) , FUN = mean)



