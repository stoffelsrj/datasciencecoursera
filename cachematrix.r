## Here I create two functions for the Datascience course R programming

## First I create a function to store the inverse in cache

makeCacheMatrix <- function(x = matrix()) {
    c <- NULL
    set <- function(y) {
      x <<- y
      c <<- NULL
    }
    get <- function() x
    setcache <- function(inverse) c <<- inverse
    getcache <- function() c
    list(set = set, 
         get = get,
         setcache = setcache,
         getcache = getcache)
  }


## Second I create a function that is looking for the inverse in cache, otherwise it makes an inverse

cacheSolve <- function(x, ...) {
  c <- x$getcache()
  if (!is.null(i)) {
    message("getting cached data")
    return(c)
  }
  data <- x$get()
  c <- solve(data, ...)
  x$setcache(c)
  c
}
