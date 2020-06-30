## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# function makeCacheMatrix creates a special matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
  }
  get <- function() {
    x
  }
  setInverseMatrix <- function(solve) {
    inverseMatrix <<- solve
  }
  getInverseMatrix <- function() {
    inverseMatrix
  }
  list(set = set, get = get, setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function
#
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
