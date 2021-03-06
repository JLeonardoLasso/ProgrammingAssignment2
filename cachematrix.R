## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Esta funci�n crea un objeto "matriz" especial que puede almacenar en cach� su inverso.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
   x <<- y
   inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

# Esta funci�n calcula la inversa de una "matriz" especial creada por 
# makeCacheMatrix anteriormente nombrada. Si ya se ha calculado esta inversa (y la
# matrix es la misma), entonces deber�a recuperar la inversa de la cach�.



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <- x$getInverse()
   if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
