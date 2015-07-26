## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function (makeCacheMatrix):
## makeCacheMatrix is a function that takes in a matrix, sets the inverse
## to null since its a new matrix, then creates getters and setters for both
## the matrix we passed in, and the matrix inverse.

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


## Write a short comment describing this function (cacheSolve):
## cacheSolve is a function that takes in an object and checks to see if
## the object has a function of getInverse, for the matrix inverse. If
## the inverse of the object is NOT null, it retreives the value from
## that environment and returns, stopping the function. Otherwise, it
## uses the get function to obtain the matrix, solves the inverse,
## and sets the inverse of the object to the new inverse.

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
