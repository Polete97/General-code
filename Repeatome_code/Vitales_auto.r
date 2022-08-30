
CL57 <- 1/(as.matrix(read.delim("clipboard")))


library(ape)

df_list = mget(ls(pattern = "CL[1-57]"))


df2_list=list()
for (x in 1:length(df_list)) {
   df2_list[[x]]<-(1/(1+df_list[[x]]))
}



for (x in 1:length(df3_list)) {
  tree<-nj(df3_list[[x]])
  write.tree(tree, file=paste(names(df_list)[x], ".tree"))
}
