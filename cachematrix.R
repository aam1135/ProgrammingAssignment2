## The following functions implement caching for calculating inverse of a matrix. 

## makeCacheMatrix function returns a list of functions that implement the caching layer

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## cacheSolve funtion makes use of the caching layer based on existence of pre-calculated inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    # Cache hit
    message("getting cached matrix")
    return(i)
  }
  # Cache miss
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i  
  
}


