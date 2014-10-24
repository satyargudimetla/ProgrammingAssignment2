## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        setMatrix <- function(y) {
                x <<- y
                inv <<- NULL
        }
        getMatrix <- function() x
        setInv <- function(iInv) inv <<- iInv
        getInv <- function() inv
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInv = setInv ,
             getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		        m <- x$getInv()
        if(!is.null(m)) {
                message("getting cached inverse matrix data")
                return(m)
        }
        data <- x$getMatrix()
        m <- solve(data, ...)
        x$setInv(m)
        m
}
