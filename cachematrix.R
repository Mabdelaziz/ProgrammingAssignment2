## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  
  set <- function(y) {
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  
  setInverse <- function ( inv = NULL )  {
    invm <<- inv }
  
  getInverse <- function () invm
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function


cacheSolve  <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}