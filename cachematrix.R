## Put comments here that give an overall description of what your
## functions do

## Following function reads a matrix and creates an inverse and retturns. If the matrix inverse is not set 
# getMatrix() will return null. 

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


## The following function checks if the cached Inverse matrix is available.If not it will create return.
#If so, it will read from the cache

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
