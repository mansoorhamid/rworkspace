library('ProjectTemplate')
load.project()


dim(Ch10Ex11)

gexpr=read.csv("C:/Users/User/Desktop/Stats/Ch10Ex11.csv",header=TRUE)
gexpr

gexpr = t(gexpr)

gexpr

gexpr_dist = dist(gexpr)

gexpr_matrix = as.matrix(gexpr)

r_obs = cor(gexpr)
d_cor = 1-r_obs

d_cor = as.dist(d_cor)
class(d_cor)
hc_c = hclust(d_cor, method = "single")

plot(hc_c, cex=0.5,main="",sub="",xlab="")

