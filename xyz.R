DS_with_python <- list("python","ML","DL","NPL","AI")
DS_with_R <- list("R","ML","DL","NPL","AI")
DS <- list(DS_with_python,DS_with_R)
DS
DS[[2]][1]

names(DS) <- c("list1","list2")
DS
DS$list1[1]
DS$Students <- c("Ram","Renny","Robert")
DS$Students[[4]] <- "Raju"
DS
list1 <- list(LETTERS[1:5])
list1



data1 <- read.table("Data.txt",header= FALSE,nrows=3,skip = 0)
data1
