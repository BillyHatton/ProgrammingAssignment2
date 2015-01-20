## This script will cache a matrix and its inverse.

## The first function creates a special matrix which can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  setMatrix = function(y) {
    x <<- y
    a <<- NULL
  }
  GetMatrix = function() x
  SetInverse = function(Inverse) a <<- Inverse
  GetInverse = function() a

}


## This function computes the inverse of the special matrix or retrieves 
## the inverse if it has already been calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
