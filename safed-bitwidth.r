data = NULL;

for(project in c("zlib", "test2")) {
  csv = read.csv('./zlib/data.csv')
  colnames(csv) <- c("function", "pre", "after")
  pd = data.frame(project, mean(csv$pre), mean(csv$pre) - mean(csv$after))
  colnames(pd) <- c("lib", "average_bitwidth", "safed_bitwidth")
  data = rbind(data, pd)
} 