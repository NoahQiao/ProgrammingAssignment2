## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  inmat <- NULL
  set <- function(y) {
    x <<- y
    inmat <<- NULL
  }
  get <- function() x
  setinmat <- function(solve) inmat <<- solve
  getinmat <- function() inmat
  list(set = set, get = get,
       setinmat = setinmat,
       getinmat = getinmat)
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  inmat <- x$getinmat()
  if(!is.null(inmat)) {
    message("getting cached data")
    return(inmat)
  }
  data <- x$get()
  inmat <- solve(data, ...)
  x$setinmat(inmat)
  inmat
## Return a matrix that is the inverse of 'x'
}
