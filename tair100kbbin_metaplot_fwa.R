library(RColorBrewer)
library(caTools)
configure=read.delim("configure_fwa.txt",header=FALSE)
meth.df=list()
for (i in 1:nrow(configure)){
  meth=read.delim(as.character(configure[i,1]),header=TRUE)
  meth=meth[which(meth[,1]!="chrM" & meth[,1]!="chrC"),]
  meth.df[[i]]=data.frame(chr=meth[,1],methratio=runmean(meth[,4]/meth[,5],k=5,alg="C"),pos=c(1:nrow(meth)),
                          type=rep(configure[i,2],nrow(meth)),
                          col=rep(configure[i,3],nrow(meth)),
                          facet=rep(configure[i,4],nrow(meth)))
}
plot.df=do.call(rbind,meth.df)
col=brewer.pal(length(levels(configure[,4])),"Spectral")
library(ggplot2)
pdf("fwa_100kb_metaplot.pdf",height=4,width=10)
p=ggplot(plot.df,aes(x=pos,y=methratio,color=facet))
p+geom_line(alpha=1)+facet_grid(type~.,scales="free",space="free_x")+
theme_bw()+theme(panel.grid.major = element_line(colour =  NA))+
  theme(panel.grid.minor = element_line(colour = NA))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  scale_colour_manual(values=col)+
  geom_vline(xintercept=c(305,502,688,923),lwd=0.5,linetype="dotdash", colour="gray")
dev.off()
