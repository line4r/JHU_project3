setwd("G:/내 드라이브/R/project/chapter3")

act_label = read.table(file.path("UCI HAR Dataset","activity_labels.txt"))

x_train = read.table(file.path("UCI HAR Dataset","train","X_train.txt"))
y_train = read.table(file.path("UCI HAR Dataset","train","Y_train.txt"))
x_test = read.table(file.path("UCI HAR Dataset","test","X_test.txt"))
y_test = read.table(file.path("UCI HAR Dataset","test","Y_test.txt"))

subject_train = read.table(file.path("UCI HAR Dataset","train","subject_train.txt"))
subject_test = read.table(file.path("UCI HAR Dataset","test","subject_test.txt"))

body_acc_x_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","body_acc_x_train.txt"))
body_gyro_x_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","body_gyro_x_train.txt"))
total_acc_x_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","total_acc_x_train.txt"))
body_acc_x_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","body_acc_x_test.txt"))
body_gyro_x_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","body_gyro_x_test.txt"))
total_acc_x_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","total_acc_x_test.txt"))

body_acc_y_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","body_acc_y_train.txt"))
body_gyro_y_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","body_gyro_y_train.txt"))
total_acc_y_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","total_acc_y_train.txt"))
body_acc_y_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","body_acc_y_test.txt"))
body_gyro_y_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","body_gyro_y_test.txt"))
total_acc_y_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","total_acc_y_test.txt"))

body_acc_z_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","body_acc_z_train.txt"))
body_gyro_z_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","body_gyro_z_train.txt"))
total_acc_z_train = read.table(file.path("UCI HAR Dataset","train","Inertial Signals","total_acc_z_train.txt"))
body_acc_z_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","body_acc_z_test.txt"))
body_gyro_z_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","body_gyro_z_test.txt"))
total_acc_z_test = read.table(file.path("UCI HAR Dataset","test","Inertial Signals","total_acc_z_test.txt"))
