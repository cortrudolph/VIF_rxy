# Data
Y1 <- rnorm(100,1,1.5)
X1 <- rnorm(100,1,1.5)
X2 <- rnorm(100,1,1.5)
X3 <- X2*rnorm(100,1,1.5)

data<-cbind.data.frame(Y1,X1,X2,X3)


# VIF
m1<-lm(Y1~X1+X2, data)
car::vif(m1)

# Invert Correlation Matrix
solve(cor(data_orthogonal[2:3]))
