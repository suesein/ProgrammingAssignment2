
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
    
  }
  get<-function()x
  setInverse<-function(inverse)inv<<-inverse
  getInverse<-function()inv
  list(set=set,
       get=get,
       setInverse=setInverse,
       getInverse=getInverse
       )
}

## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.
