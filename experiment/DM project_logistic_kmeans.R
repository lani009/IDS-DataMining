library(dplyr)

data <- read.csv("C:/Users/luinn27/Downloads/archive/Train_data.csv")
#data <- data.frame(data)

data$protocol_type <- as.character(data$protocol_type)
data$service <- as.character((data$service))
data$flag <- as.character(data$flag)


data$class[data$class=="normal"]<-0
data$class[data$class=="anomaly"]<-1

data$protocol_type[data$protocol_type=="tcp"]<-0
data$protocol_type[data$protocol_type=="udp"]<-1
data$protocol_type[data$protocol_type=="icmp"]<-2

data$service[data$service=="ftp_data"]<-0
data$service[data$service=="private"]<-1
data$service[data$service=="http"]<-2
data$service[data$service=="remote_job"]<-3
data$service[data$service=="name"]<-4
data$service[data$service=="netbios_ns"]<-5
data$service[data$service=="eco_i"]<-6
data$service[data$service=="finger"]<-7
data$service[data$service=="domain_u"]<-8
data$service[data$service=="uucp_path"]<-9
data$service[data$service=="Z39_50"]<-10
data$service[data$service=="auth"]<-11
data$service[data$service=="bgp"]<-12
data$service[data$service=="courier"]<-13
data$service[data$service=="csnet_ns"]<-14
data$service[data$service=="ctf"]<-15
data$service[data$service=="daytime"]<-16
data$service[data$service=="discard"]<-17
data$service[data$service=="domain"]<-18
data$service[data$service=="echo"]<-19
data$service[data$service=="ecr_i"]<-20
data$service[data$service=="efs"]<-21
data$service[data$service=="exec"]<-22
data$service[data$service=="ftp"]<-23
data$service[data$service=="gopher"]<-24
data$service[data$service=="hostnames"]<-25
data$service[data$service=="http_443"]<-26
data$service[data$service=="http_8001"]<-27
data$service[data$service=="imap4"]<-28
data$service[data$service=="IRC"]<-29
data$service[data$service=="iso_tsap"]<-30
data$service[data$service=="klogin"]<-31
data$service[data$service=="kshell"]<-32
data$service[data$service=="ldap"]<-33
data$service[data$service=="link"]<-34
data$service[data$service=="login"]<-35
data$service[data$service=="mtp"]<-36
data$service[data$service=="netbios_dgm"]<-37
data$service[data$service=="netbios_ssn"]<-38
data$service[data$service=="netstat"]<-39
data$service[data$service=="nnsp"]<-40
data$service[data$service=="nntp"]<-41
data$service[data$service=="ntp_u"]<-42
data$service[data$service=="other"]<-43
data$service[data$service=="pm_dump"]<-44
data$service[data$service=="pop_2"]<-45
data$service[data$service=="pop_3"]<-46
data$service[data$service=="printer"]<-47
data$service[data$service=="red_i"]<-48
data$service[data$service=="rje"]<-49
data$service[data$service=="shell"]<-50
data$service[data$service=="smtp"]<-51
data$service[data$service=="sql_net"]<-52
data$service[data$service=="ssh"]<-53
data$service[data$service=="sunrpc"]<-54
data$service[data$service=="supdup"]<-55
data$service[data$service=="systat"]<-56
data$service[data$service=="telnet"]<-57
data$service[data$service=="tim_i"]<-58
data$service[data$service=="time"]<-59
data$service[data$service=="urh_i"]<-60
data$service[data$service=="urp_i"]<-61
data$service[data$service=="uucp"]<-62
data$service[data$service=="vmnet"]<-63
data$service[data$service=="whois"]<-64
data$service[data$service=="X11"]<-65

table(data$flag)
data$flag[data$flag=="OTH"]<-0
data$flag[data$flag=="REJ"]<-1
data$flag[data$flag=="RSTOS0"]<-2
data$flag[data$flag=="RSTR"]<-3
data$flag[data$flag=="S0"]<-4
data$flag[data$flag=="S1"]<-5
data$flag[data$flag=="S2"]<-6
data$flag[data$flag=="S3"]<-7
data$flag[data$flag=="SF"]<-8
data$flag[data$flag=="SH"]<-9
data$flag[data$flag=="RSTO"]<-10

data$service <- as.factor(data$service)
data$flag <- as.factor(data$flag)
data$class <-as.factor(data$class)
#data<-na.omit(data)
table(data$service)


md <- glm(data=data, class~ .,family=binomial)
summary(md)
md_ <- step(md, test="LRT")
md_

table(data_origin$protocol_type)
table(data_origin$service)
table(data_origin$land)
summary(data_origin$srv_count)

newdata <- data
newdata$service<-as.numeric(newdata$service)

newdata$service[newdata$service==10]<-99
newdata$service[newdata$service==12]<-99
newdata$service[newdata$service==13]<-99
newdata$service[newdata$service==14]<-99
newdata$service[newdata$service==15]<-99
newdata$service[newdata$service==16]<-99
newdata$service[newdata$service==17]<-99
newdata$service[newdata$service==19]<-99
newdata$service[newdata$service==21]<-99
newdata$service[newdata$service==22]<-99
newdata$service[newdata$service==24]<-99
newdata$service[newdata$service==25]<-99
newdata$service[newdata$service==26]<-99
newdata$service[newdata$service==27]<-99
newdata$service[newdata$service==28]<-99
newdata$service[newdata$service==29]<-99
newdata$service[newdata$service==3]<-99
newdata$service[newdata$service==30]<-99
newdata$service[newdata$service==31]<-99
newdata$service[newdata$service==32]<-99
newdata$service[newdata$service==33]<-99
newdata$service[newdata$service==34]<-99
newdata$service[newdata$service==35]<-99
newdata$service[newdata$service==36]<-99
newdata$service[newdata$service==37]<-99
newdata$service[newdata$service==38]<-99
newdata$service[newdata$service==39]<-99
newdata$service[newdata$service==4]<-99
newdata$service[newdata$service==40]<-99
newdata$service[newdata$service==41]<-99
newdata$service[newdata$service==42]<-99
newdata$service[newdata$service==44]<-99
newdata$service[newdata$service==45]<-99
newdata$service[newdata$service==47]<-99
newdata$service[newdata$service==48]<-99
newdata$service[newdata$service==49]<-99
newdata$service[newdata$service==5]<-99
newdata$service[newdata$service==52]<-99
newdata$service[newdata$service==53]<-99
newdata$service[newdata$service==54]<-99
newdata$service[newdata$service==55]<-99
newdata$service[newdata$service==56]<-99
newdata$service[newdata$service==58]<-99
newdata$service[newdata$service==59]<-99
newdata$service[newdata$service==60]<-99
newdata$service[newdata$service==61]<-99
newdata$service[newdata$service==62]<-99
newdata$service[newdata$service==63]<-99
newdata$service[newdata$service==64]<-99
newdata$service[newdata$service==9]<-99



table(newdata$service)
newdata$service[newdata$service==6]<-3
newdata$service[newdata$service==7]<-4
newdata$service[newdata$service==8]<-5
newdata$service[newdata$service==11]<-6
newdata$service[newdata$service==13]<-7
newdata$service[newdata$service==14]<-8
newdata$service[newdata$service==18]<-9
newdata$service[newdata$service==20]<-10
newdata$service[newdata$service==23]<-11
newdata$service[newdata$service==43]<-12
newdata$service[newdata$service==46]<-13
newdata$service[newdata$service==50]<-14
newdata$service[newdata$service==51]<-15
newdata$service[newdata$service==57]<-16
newdata$service[newdata$service==65]<-17
newdata$service[newdata$service==66]<-18
table(newdata$service)

newdata$service <- as.factor(newdata$service)


#newdata <- subset(newdata, select=-c(num_outbound_cmds, is_host_login, urgent))

table(newdata$flag)
newdata$flag <- as.numeric(newdata$flag)
#newdata$flag[newdata$flag=="RSTO"]<-11
newdata$flag <- as.factor(newdata$flag)

new_md <- glm(data=newdata, class~., family=binomial)
summary(new_md)     

newdata$flag <- as.numeric(newdata$flag)
newdata$flag[newdata$flag==8]<-99
newdata$flag[newdata$flag==3]<-99
newdata$flag[newdata$flag==10]<-99
table(newdata$flag)
newdata$flag[newdata$flag==4]<-3
newdata$flag[newdata$flag==5]<-4
newdata$flag[newdata$flag==6]<-5
newdata$flag[newdata$flag==7]<-6
newdata$flag[newdata$flag==9]<-7
newdata$flag[newdata$flag==11]<-8
newdata$flag[newdata$flag==99]<-9
table(newdata$flag)
newdata$flag <- as.factor(newdata$flag)
new_md <- glm(data=newdata, class~., family=binomial)
summary(new_md)     

library(olsrr)
fixed_md <- step(new_md, test="LRT")
data_fix <- newdata %>% subset(data=newdata, select=c(num_root,logged_in,dst_host_srv_serror_rate,dst_bytes,num_failed_logins,is_guest_login,srv_count,land
                                                ,serror_rate,src_bytes,duration,dst_host_diff_srv_rate,rerror_rate,dst_host_srv_diff_host_rate,diff_srv_rate,
                                                srv_diff_host_rate,su_attempted,same_srv_rate,srv_serror_rate,dst_host_rerror_rate,srv_rerror_rate,
                                                dst_host_same_srv_rate,num_compromised,dst_host_count,count,wrong_fragment,dst_host_srv_count,
                                                dst_host_same_src_port_rate,protocol_type,flag,service,hot,class))
library(data.table)
data_fix <- data.table(data_fix)
md_f <- glm(data=data_fix, class~., family="binomial")
summary(md_f)
shapiro.test(md_f$residuals)

library(ROCR)
score = function(test,pred){
  confusion_matrix = table(test,pred)
  
  accuracy = sum(diag(confusion_matrix))/sum(confusion_matrix)
  Precision = confusion_matrix[2,2]/sum(confusion_matrix[2,])
  Recall = confusion_matrix[2,2]/sum(confusion_matrix[,2])
  f1score = 2*(Precision*Recall)/(Precision+Recall)
  cat("accuracy: ",accuracy,"\nPrecision: ",Precision,"\nRecall: ",Recall,"\n")
  cat("F1-score: ",f1score,"\n")
  
  error_rate = 1 - accuracy
  cat("error_rate:",error_rate,"\n")
  
  auc = performance(prediction(pred,test),measure = "auc")
  cat("AUC: ", auc@y.values[[1]])   
}

data_fixed<-data_fix %>% subset(data=data_fix, select=-c(srv_count,rerror_rate, su_attempted,wrong_fragment))


data_fixed <- data_fixed %>% dplyr::mutate(index_num=row_number())
tr <- sample_frac(data_fixed, size=0.7)
ts <- anti_join(data_fixed, tr, by=c('index_num'))
tr <- subset(tr, select=-index_num)
ts <- subset(ts, select=-index_num)

model_to_predict <- glm(data=tr, class~., family=binomial)
summary(model_to_predict)
predict <- predict(model_to_predict,newdata=ts, type='response')
pred <- ifelse(predict<0.5,0,1)
test <- ts$class

score(pred,test)

write.csv(newdata, "G:/Project/DM_data.csv",row.names=F)


#### K-means

library(caret)
library(ROCR)
tr_k <- subset(tr, select=-c(class))
kmeans <- kmeans(tr_k, centers=2, iter.max=10000)
#kmeans$centers
modfit <- train(x=tr_k, y=tr$class, method="rpart")
predict <- predict(modfit, ts, type="prob")
predict <- ifelse(predict<0.5,0,1)
predict <- data.table(predict)
names(predict)[2]<-paste("conclusion")

score(predict$conclusion, ts$class)

