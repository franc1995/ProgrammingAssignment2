## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(a = matrix()) {
   inv <- NULL
   set <- function(b) {
       a <<- b
       inv <<- NULL
   }
   get <- function()a
   setInv <- function(inverse) inv <<- inverse
   getInv <- function()inv
   list(set=set,get=get,setInv=setInv,getInv=getInv)
}

## Write a short comment describing this function

cacheSolve <- function(a, ...) {
   inv <- a$getInv()
   if(!is.null(inv)) {
       message("get cache")
       return(inv)
   }
   data <- a$get()
   inv <- solve(data)
   a$setInv(inv)
   inv
}
