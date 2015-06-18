## Demonstrates caching of the results of a function that may 
## be needed repeatedly and require a long processing time

## Store the makeCacheMatrix () function below in a variable and then
## set that variable to a square matrix. Uses solve() to find the
## inverse.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Sets variable m and retrieves valuae of cached matrix from function above.

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
       message("getting cached data")
       return(m)
     }
     matrix<-x$get()
     m<-solve(matrix, ...)
     x$setmatrix(m)
     m
}

