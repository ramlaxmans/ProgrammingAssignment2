## Functions that cachethe inverse of the matrix - Sep 27,'15
# makeCacheMatrix - creates a matrix that can cache its inverse
#CacheSolve - computes the inverse of the matrix returned by makeCacheMatrix.

#makCacheMatrix - create a matrix that can cache its inverse
# x is a square invertible matrix
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
       m <<- NULL
    }
    get <- function() x
    setinv <- function(solve) m <<- solve
    getinv <- function() m
    list(set = set, get = get,
         seinv = setinv,
         getinv = getinv) 
}


# CacheSolve - computes the inverse of the matrix returned by makeCacheMatrix.
# If inverse of matrix is available, it will be returned provided matrix has not changed
# 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)   # returns the Inv. of matrix x
  x$setinv(m)
  m
}
