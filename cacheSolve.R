# Calculate the inverse of a matrix or retrieve it from the cache
cacheSolve <- function(mat, ...) {

  # If the invert of 'mat' is available from the cache,
  # then retrieve it and return
  matInv <- mat$getInverse()
  if(!is.null(matInv)) {
    message("From 'cacheSolve()':")
    message("   The matrix has not been inverted via a call to 'solve'.")
    message("   The matrix has been retrieved from the cache.")
    return(matInv)
  }
  
  # If the invert of 'mat' is not available from the cache,
  # then calculate it, cache it and output it
  matDat <- mat$getMatrix()
  matInv <- solve(matDat, ...)
  mat$setInverse(matInv)
  message("From 'cacheSolve()':")
  message("   The matrix has been inverted and cached.")
  matInv

}
  