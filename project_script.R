library(dplyr)
setwd("G:/내 드라이브/R/project/chapter3")
source(file.path("file_setting.R"))
# read from file to R

xy_train = bind_cols(y_train,subject_train,x_train)
xy_test = bind_cols(y_test,subject_test,x_test)
xy_total = bind_rows(xy_train,xy_test)
colnames(xy_total)[1:2] = c("labels","subject")
colnames(xy_total)[(2+1):(ncol(xy_total))]=paste0("V",1:(ncol(xy_total)-2))

body_acc_x = bind_rows(body_acc_x_train,body_acc_x_test)
colnames(body_acc_x)=paste0("BA_x",1:ncol(body_acc_x))
body_gyro_x = bind_rows(body_gyro_x_train,body_gyro_x_test)
colnames(body_gyro_x)=paste0("BG_x",1:ncol(body_gyro_x))
total_acc_x = bind_rows(total_acc_x_train,total_acc_x_test)
colnames(total_acc_x)=paste0("TA_x",1:ncol(total_acc_x))

body_acc_y = bind_rows(body_acc_x_train,body_acc_y_test)
colnames(body_acc_y)=paste0("BA_y",1:ncol(body_acc_y))
body_gyro_y = bind_rows(body_gyro_x_train,body_gyro_y_test)
colnames(body_gyro_y)=paste0("BG_y",1:ncol(body_gyro_y))
total_acc_y = bind_rows(total_acc_x_train,total_acc_y_test)
colnames(total_acc_y)=paste0("TA_y",1:ncol(total_acc_y))

body_acc_z = bind_rows(body_acc_x_train,body_acc_z_test)
colnames(body_acc_z)=paste0("BA_z",1:ncol(body_acc_z))
body_gyro_z = bind_rows(body_gyro_x_train,body_gyro_z_test)
colnames(body_gyro_z)=paste0("BG_z",1:ncol(body_gyro_z))
total_acc_z = bind_rows(total_acc_x_train,total_acc_z_test)
colnames(total_acc_z)=paste0("TA_z",1:ncol(total_acc_z))

body_acc = bind_cols(body_acc_x,body_acc_y,body_acc_z)
body_gyro = bind_cols(body_gyro_x,body_gyro_y,body_gyro_z)
total_acc = bind_cols(total_acc_x,total_acc_y,total_acc_z)

total_df = bind_cols(xy_total,body_acc,body_gyro,total_acc)

for (i in 1:nrow(total_df)){
      ow_list = act_label[,1]==total_df[i,1]
      total_df[i,1] = as.character(act_label[ow_list,2])
} 
# merge each dataset to integrated one dataset
## how to get improved code in this point?

total_df[,1] = as.factor(total_df[,1])
total_df[,2] = as.factor(total_df[,2])

df_mean = lapply(total_df[,-(1:2)],mean)
df_sd = lapply(total_df[,-(1:2)],sd)

mean_group = group_by(total_df,labels,subject) %>% summarize_all(mean)

# needed dataframe for project
