##Set the origin matrix
a <- c(1,1,2)
b <- c(2,1,2)
c <- c(1,-2,1)
origin_Matrix <- rbind (a,b,c)
origin_Matrix

##Set source
source(paste0(getwd(),"/cachematrix.R"))

##Create "special" list and set the sourcing origin matrix
listMatrix <- makeCacheMatrix()
listMatrix$set(origin_Matrix)

##Computation of inverse matrix
Inverse_Matrix <-cacheSolve(listMatrix)
Inverse_Matrix

##Checking cached matrix
Inverse_Matrix <-cacheSolve(listMatrix)
Inverse_Matrix

##Checking inversion, expected result = unit matrix
origin_Matrix %*% Inverse_Matrix
