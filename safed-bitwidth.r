data = NULL;

for(project in c("zlib", "libjpeg", "libpng", "libgif", "libtiff")) {
  csv = read.csv(paste(project, '/data.csv', sep = ""))
  colnames(csv) <- c("function", "pre", "after")
  pd = data.frame(project, mean(csv$pre), mean(csv$pre) - mean(csv$after))
  colnames(pd) <- c("lib", "average_bitwidth", "safed_bitwidth")
  data = rbind(data, pd)
} 
write.csv(data, 'result.csv')
plot(data)
View(data)