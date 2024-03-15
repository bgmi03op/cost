Mat_A<-matrix(c(1,2,-1,3,4,5,3,-6,2),
              nrow=3,
              byrow = TRUE)
Mat_A
Mat_B<-matrix(c(1,2,-1,3,4,5,3,-6,2),
              nrow=3,
              byrow = TRUE)
#a. Add matrices A and B
Add_AB <-Mat_A+Mat_B
Add_AB

#b. Multiply matrices A and B
mul_ab<-Mat_A%*% Mat_B
mul_ab

#c. Find the inverse of matrix A
inv_A<-solve(Mat_A)
inv_A
#d. Find the inverse of matrix B
inv_B<-solve(Mat_B)
inv_B

#e. Find the transpose of matrix BA
tran_A<- t(Mat_A)
tran_A
tran_B<- t(Mat_B)
tran_B