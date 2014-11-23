## @author Mayank Johari (mayank.johari@gmail.com)
## Feature to store the inverse of the matrix in the cache memory of runtime envrionment. 
## functions do

## Function 1 (makeCacheMatrix) : Create a matrix chache in the memory and also responisble to poupulate it.
## This function also define the supporting functions to access the modify the cache.

## Usage:: cacheSolve(makeCacheMatrix(<matrix_for_inversion>))

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix <- function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## Function 2 (cacheSolve) : Logic to calculate the inverse of the square matrix using "solve"

cacheSolve <- function(x, ...) {
        ## Function return a matrix that is the inverse of 'x'
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
