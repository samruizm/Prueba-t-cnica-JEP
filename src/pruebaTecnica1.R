library(dplyr)
A$fuente<-rep("A",10)
B$fuente<-rep("B",10)
todo<-rbind(A,B)

Identificador<-as.data.frame(cbind(etiquetas,id))
etiquetas<-unique(todo$NUMERO_DOCUMENTO)
id<-seq(1:15)
todo<-todo%>%inner_join(Identificador,by=c("NUMERO_DOCUMENTO"="etiquetas"))%>%as.data.frame()

