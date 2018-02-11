## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# matrix as an input
makeCacheMatrix <- function(a = matrix()) {
   inv <- NULL
   #value of the Matrix
   set <- function(b) {
       a <<- b
       inv <<- NULL
   }
   #value of the Matrix
   #value of the invertible matrix
   get <- function()a
   setInv <- function(inverse) inv <<- inverse
   getInv <- function()inv
   list(set=set,get=get,setInv=setInv,getInv=getInv)
}

## Write a short comment describing this function
## The function cacheSolve takes the output of the previous fuction, and use it like a input and checks inverse matrix has any value in it or not.
 + -# in case that the inverse matrix is empty, it takes the original matrix and solve the fuction
 + -# In case inverse matrix  has some value in it (always works, it returns a message  "Getting Cached Invertible Matrix"  and the cached object
## Inverts the cached matrix from makeCacheMatrix

cacheSolve <- function(a, ...) {
   inv <- a$getInv()
   if(!is.null(inv)) {
       message("get cache")
       return(inv)
   }
   ## Reurns unchanged matrix if already inverted

   data <- a$get()
   inv <- solve(data)
   a$setInv(inv)
   inv
}
