source("cachematrix.R")
mat <- matrix(data = c(4,2,7,8), nrow = 2, ncol = 2)
mat_cache <- makeCacheMatrix(mat)
cacheSolve(mat_cache)
