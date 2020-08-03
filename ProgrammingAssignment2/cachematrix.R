##  First functions caches the inverse of the matrix and stores and the second one retrives the inverse from cache 

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y){
    x <<- y
    a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (given the matrix hasn't changed), 
##then cacheSolve would retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  a <- x$getInverse()
  if(!is.null(a)){
    message("Get Cached Data")
    return(a)
  }
  mymatrix <- x$get()
  a <- solve(mymatrix,...)
  x$setInverse(a)
  j
}
