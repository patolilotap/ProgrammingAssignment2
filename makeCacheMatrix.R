# Create an object 'matrix' that holds the matrix data and
# its inverse matrix data
makeCacheMatrix <- function(mat = matrix()) {
  # default to 'matrix' type
  
  # inititialize 'matInv', the matrix inverse of 'mat'
  matInv <- NULL
  
  # define the 'Set Matrix' function
  # uses the matrix value 'matToSet' from the parent environment
  # the matrix inverse is reset, as it is a new matrix
  setMatrix  <- function(matToSet) {
    mat <<- matToSet
    matInv <<- NULL
  }
  
  # define the 'Get Matrix' function
  getMatrix  <- function() mat
  
  # define the 'Set Inverse' function
  setInverse <- function(matInvToSet) {
    # uses the matrix value 'matInvToSet' from the parent environment
    matInv <<- matInvToSet
  }
  
  # define the 'Get Inverse' function
  getInverse <- function() matInv

  # output defined to be able to use the $ operator
  list(
    setMatrix  = setMatrix,
    getMatrix  = getMatrix,
    setInverse = setInverse,
    getInverse = getInverse)
}
      