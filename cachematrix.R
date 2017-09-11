## To cache the inverse of a matrix
## benefit is to cache the inverse of a matrix rather than to compute it repeatedly.
##Given below are the functions,that creates a special object to stores
##the matrix and caches the inverse
## this function creates a special "matrix" object

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x<<-y
                inv<<-NULL
                }
        get<-function()x
        setInverse<-functio(inverse)inv<<-inverse
        getInverse<-function()inv
        list(set=set,get=get,
             setInverse=setInverse
             getInverse=getInverse)
}


## Write a short comment describing this function 
##The above function calculates the matrix of the special "Matrix" created
##by makeCacheMatrix. If the inverse has already been calculated
##and there is no change in the matrix,then it should inverse from the cache.

 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)}
         data<-x$get()
        inv<-solve(data,...)
        x$setInverse(inv)
        inv
             }
