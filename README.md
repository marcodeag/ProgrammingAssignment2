### Introduction

Pair of functions required by second programming assignment of "Coursera R Programming" course.

### makeCacheMatrix
Description: this function creates a special "matrix" object that can cache its inverse
Usage: listMatrix <- makeCacheMatrix()
Arguments: "x" usuallay a null matrix
OutPut: a specialList by means of invoke set, get, setMatInversion, getMatInversion functions

### cacheSolve
Description:this function computes the inverse of the special "matrix",returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed),then the cachesolve should retrieve the inverse from the cache.
Usage: Inverse_Matrix <-cacheSolve(listMatrix), where listMatrix is a special list obtained by makeCacheMatrix()
Arguments: "x" usuallay a special list obtained by makeCacheMatrix()
OutPut: inversion of matrix obtained from cache or calculated if never cached before




