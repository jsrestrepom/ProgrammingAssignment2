## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set_matrix <- function(aMatrix) {
    x <<- aMatrix
    inverse <<- NULL
  }
  get_matrix <- function() x
  set_inverse <- function(anInverse) {
    inverse <<- anInverse
  }
  get_inverse <- function() inverse
  list(setmatrix = set_matrix, getmatrix = get_matrix, 
       setinverse = set_inverse, getinverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverse_matrix <- x$getinverse()
  if(!is.null(inverse_matrix)) {
    message("getting cached data")
    return(inverse_matrix)
  }
  data_matrix <- x$getmatrix()
  inverse_matrix <- solve(data_matrix, ...)
  x$setinverse(inverse_matrix)
  inverse_matrix
}
