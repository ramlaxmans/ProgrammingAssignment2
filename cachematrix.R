## Put comments here that give an overall description of what your
## functions do

## Function makeCacheMatrix creates a matrix Object for calculating
## its inverse. Require that Matrix X is a squre invertible matrix.

makeCacheMatrix <- function(x = matrix() , nrows=3,ncols=3){
    x<- list(a=matrix(1:9, nrows,ncols))
}


## Function cacheSolve computes the inverse of the given matrix. 
## In case inverse matrix is already availabe, it retrieves the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
    y<-solve(x)  ## Return a matrix that is the inverse of 'x'
}
