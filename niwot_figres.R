## Niwot proposal figures

library(corrplot)
mt <- mtcars[,1:5]
colnames(mt) <- c("spp 1", "spp 2", "spp 3", "spp 4", "spp 5")
M <- cor(mt)

png("time_corr.png", width = 4, height = 4, units = "in",res = 72)
corrplot(M, method="ellipse", type = "lower", diag = FALSE)
dev.off()



mt <- mtcars[,6:10]
colnames(mt) <- c("comm. 1", "comm. 2", "comm. 3", "comm. 4", "comm. 5")
M <- cor(mt)

png("space_corr.png", width = 4, height = 4, units = "in",res = 72)
corrplot(M, method="ellipse", type = "lower", diag = FALSE)
dev.off()