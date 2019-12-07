mydata <- data.frame(x1=1:5,x2<-LETTERS[1:5])
mydata


write.table(mydata,file="mydata.txt",row.names = FALSE,col.names = FALSE,sep=",")
write.csv(mydata,row.names=FALSE,file="mydata.csv")

write.csv2(mydata,row.names = FALSE,file="mydata2.txt")



cat("Test file for cat\n",round(rnorm(10),2),"\n",file="cat_test.txt")


"ram">"reddy"
t=f
T==F

X <- 80
X>=70 & X<=90

X!=80



RAM_MARKS <- 85
if(RAM_MARKS>80)
{
  print("Good Student!")
  }else
{
    print("Better luck next year!")
  }


ph<-8
if(ph>7){
  print("its is acid")
  }else
  if(ph==7){print("it is natural")
  }else
  {print("it is base")}


ram<-40
if(ram>80){
  print("Excellent!")
}else
  if(ram>35){print("Pass")}else
  {print("fail")}



x<-10
repeat{
  print(x)
  x=x+1
  if(x<7)
  {break}
}


i<-1
while(i<6){print(i)
  i=i+1}

x<-1
while(x<=20){
  if(x%%2==0)
  {print(paste(x,"Is an even number"))
    }else
    {print(paste(x,"is an odd number"))}
  x<-x+1
}



x<-c(1:100)
for(val in x){if(val%%3==0)
{
  print(paste(val,"is divisible by 3"))
}
}


s<-function(x){x*x}
s(5)

power<-function(x,y){a<-x^y
b<-y^x
return(b)}
power(2,3)

roots<-function(a,b,c)
{
  c((-b+sqrt(b^2-4*a*c))/2*a,(-b-sqrt(b^2-4*a*c))/2*a)
}
roots(1,7,12)


install.packages("ggvis")




x<-c(21,62,10,53)
lables<-c("london","nuark","singapur","mumbai")

png(file="city.png")

pie(x,lables)
dev.off()



h<-c(7,12,28,3,41)

png(file="barchart.png")

barplot(h)
dev.off()

png(file="linechart.png")
plot(h,type="o")
dev.off()

install.packages("tidyverse")


df<-data.frame(col=c("X","Y"),A=c(1,4),B=c(1,4),C=c(3,6))
df
install.packages("tidyr")
library(tidyr)
df_g<-gather(df,my_key,my_value,-col)
df_g


df<-data.frame(col=c("x","y","z"),A=c(1,2,3),B=c(4,5,6),C=(7,8,9))
  df1<-gather(df,m_y,my_v,-col)
df1


s<-spread(df_g,my_key,my_value)
s


df<-data.frame(col=c("X","Y"),col1=c("A-1","B-2"))
df

ds_s<-separate(df,col1,c("key","value"),sep="-")
ds_s



unite(ds_s,key_value,key,value,sep="-")

install.packages(stringr)

library(stringr)
str_trim("this is a test")
str_pad("24493",width=10,side="left",pad=0)

friends<-c("Sarah","Tom","Alice")
friends

str_detect(friends,"Alice")


str_replace(friends,"Alice","David")


tolower("I AM TALKING LOUDLY!!")


toupper("i am whispering..")


library(tidyverse)
as_tibble(iris)
?iris



tb<-tibble(
  `:)`="smile",
  ` `="space",
  `2000`="number"
)
tb


tribble(
  ~x,~y,~z,
  "a",2,3.6,
  "b",1,8.5
)


tibble(
  a=lubridate::now()+runif(1e3)*86400,
  b=lubridate::today()+runif(1e3)*30,
  c=1:1e3,
  d=runif(1e3),
  e=sample(letters,1e3,replace=TRUE)
)


install.packages("nycflights13")

library(nycflights13)
?nycflights13


nycflights13::flights


filter(flights,month==11,day==21)


arrange(flights,year,month,day)

arrange(flights,desc(month))

flights_sml<-select(flights,
                    year:day,ends_with("delay"),distance,air_time)
mutate(flights_sml,gain=dep_delay-arr_delay,speed=distance/air_time*60)


transmute(flights_sml,gain=dep_delay-arr_delay,speed=distance/air_time*60)


