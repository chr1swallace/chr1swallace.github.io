library(data.table)
x <- fread("csv20171123.csv")
head(x)
setnames(x,make.names(names(x)))
## multiple records per paper
## fix Wallace, CE -> Wallace, C
x[,Authors:=sub("Wallace CE","Wallace C",Authors)]

## x[,ndoi:=length(unique(setdiff(Publisher.DOI,""))),by="ID"]
## x[ndoi>1,.(ID,Authors,Title,Publisher.DOI)]
## x[ndoi>1,.(ID,Publisher.DOI)]
## x[ndoi>1,]$Publisher.DOI

ids <- function(z,what="pmc:") {
    z <- unique(unlist(strsplit(z,", ")))
    ret <- grep(what,z,value=TRUE)
    if(!length(ret))
        ret <- as.character(NA)
    sub(what,"",ret)
}

x[,pmc:=ids(External.identifiers,"pmc:"),by="ID"]
x[,pubmed:=ids(External.identifiers,"pubmed:"),by="ID"]
x[,doi:=unique(tolower(setdiff(Publisher.DOI,""))),by="ID"]
x[,year:=unique(setdiff(sub("-.*","",Publication.date),"")),by="ID"]
#unique(x[,.(ID,Authors,Title,Journal,Volume,Issue,Publication.date,Pagination..start.page.,Pagination..end.page.)],by="ID")
y <- head(unique(x[,.(ID,Authors,Title,Journal,year,pmc,doi,pubmed)],by="ID"))
cat(gsub("\n  [a-z]+: .na.character","",as.yaml(y,column.major = FALSE)),file="symplectic.yaml")



