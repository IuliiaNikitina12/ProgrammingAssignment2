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
#The function cacheSolve is for computing the inverse matrix and if the 
#matrix has already been calculated retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverseMatrix <- x$getInverseMatrix()
  if(!is.null(inverseMatrix)) {
    message("getting cached data")
    return(inverseMatrix)
  }
  data <- x$get()
  inverseMatrix <- solve(data)
  x$setInverseMatrix(inverseMatrix)
  inverseMatrix
}
