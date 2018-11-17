## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The first function,make the below function

##1set the value of the vector
##2get the value of the vector
##3set the value of the mean
##4get the value of the mean
makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set <- function(y) {
        x <<- y
        inver <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inver <<- inverse
    getinverse <- function() inver
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
##the following function return the cache of inverse matrix

cacheSolve <- function(x, ...) {
    inver <- x$getinverse()
    if(!is.null(inver)) {
        message("getting cached data.")
        return(inver)
    }
    data <- x$get()
    inver <- solve(data)
    x$setinverse(inver)
    inver
}

## Output
## x = rbind(c(2, -3/4), c(-3/4, 2))
## m=makeCacheMatrix(x)
## m$get()
##     [,1]  [,2]
##[1,]  2.00 -0.75
##[2,] -0.75  2.00
##cacheSolve(m)
##          [,1]      [,2]
##[1,] 0.5818182 0.2181818
##[2,] 0.2181818 0.5818182
##cacheSolve(m)
##getting cached data.
##          [,1]      [,2]
##[1,] 0.5818182 0.2181818
##[2,] 0.2181818 0.5818182

