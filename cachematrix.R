makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  
  list(
    set = set, 
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}

cacheSolve <- function(x, ...) {
  inv_mat <- x$getinverse()
  if (!is.null(inv_mat)) {
    i
  }
  data <- x$get()
  inv_mat <- solve(data, ...)
  x$setinverse(inv_mat)
  inv_mat
}
