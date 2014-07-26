## Overview: pair of functions that cache the inverse of a matrix

## Description: this function creates a special "matrix" object that can cache its inverse
## Usage: listMatrix <- makeCacheMatrix()
## Arguments: "x" usuallay a null matrix
## OutPut: a specialList by means of invoke set, get, setMatInversion, getMatInversion functions

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setMatInversion <- function(Inversion) m <<- Inversion
        getMatInversion <- function() m
        list(set = set, get = get,
             setMatInversion = setMatInversion,
             getMatInversion = getMatInversion)
}


## Description
## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already 
## been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
## Usage: Inverse_Matrix <-cacheSolve(listMatrix), where listMatrix is a special list obtained by makeCacheMatrix()
## Arguments: "x" usuallay a special list obtained by makeCacheMatrix()
## OutPut: inversion of matrix obtained from cache or calculated if never cached before

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getMatInversion()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setMatInversion(m)
        m
}

##----------------------------------------------------------
## Example
## Set the origin matrix
## a <- c(1,1,2)
## b <- c(2,1,2)
## c <- c(1,-2,1)
## origin_Matrix <- rbind (a,b,c)
## origin_Matrix

## Set source
## source(paste0(getwd(),"/cachematrix.R"))

## Create "special" list and set the sourcing origin matrix
## listMatrix <- makeCacheMatrix()
## listMatrix$set(origin_Matrix)

## Computation of inverse matrix
## Inverse_Matrix <-cacheSolve(listMatrix)
## Inverse_Matrix

## Checking cached matrix, message "getting cached data" expected
## Inverse_Matrix <-cacheSolve(listMatrix)
## Inverse_Matrix

## Checking inversion, expected result = unit matrix
## origin_Matrix %*% Inverse_Matrix
##---------------------------------------------------------------------