## The program helps you pass a matrix and cache its inverse instead of performaing the operation every time.

## This function helps you create an inverse of your matrix an cache the same.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inversevalue) inverse <<- inversevalue
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse= setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached matrix inverse data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  inverse
}
