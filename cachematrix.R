

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##this function creates a matrix object that caches the inverse
makeCacheMatrix <- function(x = matrix()) {
  
  invM <- NULL                        #create invM variable     
  set <- function(y) {                #define set function to define matix in parent environment
    x <<- y                           #if not reset intM
    invM <<- NULL
  
}


## Write a short comment describing this function

#this function calulates the inverse of the matrix returned by makeCacheMatrix
#if inverserve has already been calculated then it will pull the inverse from the cache
        
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          if(!is.null(invM)) {
                 message("getting cached data")
                 return(invM)
                 }
         data <- x$get()
         invM <- solve(data, ...)
         x$setinverse(invM)
        invM
}
