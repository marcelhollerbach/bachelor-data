data = NULL;

for(project in c("zlib", "libjpeg", "libpng", "libgif", "libtiff")) {
  csv = read.csv(paste(project, '/data.csv', sep = ""))
  colnames(csv) <- c("function", "absolut", "pre", "after", "absolut_nc", "pre_nc", "after_nc")
  number_nodes <- sum(csv$absolut)
  number_nodes_nc <- sum(csv$absolut_nc)
  pd = data.frame(project, 
                  number_nodes,
                  number_nodes_nc,
                  ((number_nodes - number_nodes_nc) / number_nodes),
                  mean(csv$pre), mean(csv$pre) - mean(csv$after), 
                  mean(csv$pre_nc), mean(csv$pre_nc) - mean(csv$after_nc))
  colnames(pd) <- c("lib", "nodes", "constNodes", "percentNodes", "avgBw", "safedBw", "avgBwNc", "safedBwNc")
  data = rbind(data, pd)
}
write.csv(data, 'result.csv')
View(data)
