## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function to set the inverse of a matrix into cache

makeCacheMatrix <- function(x = matrix()) {
n <- NULL
set<- function(y){
  x<<- y
  n<<- NULL
}
get <- function()x
setinverse<- function(solve) n <<- inverse
getinverse <- function() n
list(set=set, get =get,
     setinverse = setinverse,
     getinverse = getinverse)

}



## Write a short comment describing this function
## this function finds inverse of a matrix

cacheSolve <- function(x, ...) {
        
  ## Return a matrix that is the inverse of 'x'

 n<-x$getinverse()
 if(!is.null(n)){
   message("getting cached data")
   return(n)
 }
  data <- x$get()
  n<- solve(data,...)
  x$setinverse(n)
  n
}


