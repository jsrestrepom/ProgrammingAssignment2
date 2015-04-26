case1Matrix <- matrix(1:4, nrow = 2, ncol = 2)
case2Matrix <- matrix(c(1, 2, 3, 0, 1, 4, 5, 6, 0), nrow = 3, ncol = 3)
case3Matrix <- matrix(c(4, 3, 3, 2), nrow = 2, ncol = 2)
case4Matrix <- matrix(c(3, 0, 2, -1, 1, 2, 0, -2, 4, 0, 6, -3, 5, 0, 2, 0), nrow = 4, ncol = 4)


cachedMatrix <- makeCacheMatrix(case1Matrix)
cachedMatrix$getmatrix()
cacheSolve(cachedMatrix)
cacheSolve(cachedMatrix)
cachedMatrix$setmatrix(case4Matrix)
cachedMatrix$getmatrix()
cacheSolve(cachedMatrix)
cacheSolve(cachedMatrix)
