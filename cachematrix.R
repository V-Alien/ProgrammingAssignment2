## The following fucntions fulfil the programming assignement and create a matrix and compute its inverse (if the matrix is square)
## the second function then retrieves the inverse fo the matrix if already computed otherwise computes the inverse



## the following function 1. sets the value of a matrix 
## 2. gets the value of the matrix 
## 3. sets the value of the inverse of the matrix 
## 4. gets the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setmatrix <-function(solve) inv <<-solve
  getmatrix <- function() inv
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## The following function, uses lexical scoping to 
## retrieve the inverse of the matrix (if it has already been computed) 
## or compute the inverse of the matrix if it hasn't been calculated already


cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <-x$getmatrix()
  if(!is.null(inv)){
    message("retrieving cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setmatrix(inv)
  inv
}


