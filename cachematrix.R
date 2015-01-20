## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  SetMatrix <- function(y) {
    x <<- y
    a <<- NULL
  }
  GetMatrix <- function() x
  SetInverse <- function(Inverse) a <<- Inverse
  GetInverse <- function() a
  list(SetMatrix = SetMatrix, GetMatrix = GetMatrix, SetInverse = SetInverse,
       GetInverse = GetInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- x$GetInverse()
  if(!is.null(a)) {
    message("Getting cached inverse of matrix")
    return(a)
      }
  Values <- x$GetMatrix()
  a <- solve(Values,...)
  x$SetInverse(a)
  a
}