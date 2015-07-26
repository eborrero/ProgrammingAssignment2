## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  set <- function(y){
    x <<- y
    mi <<- NULL
  }
  get <- function() x
  setInverse <- function(someMatrix = matrix()) mi <<- someMatrix
  getInverse <- function () mi[]
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  mi <- x$getInverse()
  if(!is.null(mi)){
    message("getting cached data")
    return(mi)
  }
  data <- x$get()
  mi <- solve(data)
  x$setInverse(mi)
  mi
        ## Return a matrix that is the inverse of 'x'
}
