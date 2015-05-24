## Put comments here that give an overall description of what your
## functions do
## There are two function as per Programming Assignment 2 
## First function, is returnig functions: 
##      - dodeli = set values of matrix and it's inverse 
##      - dobij = get values matrix 
##      - dodeliInversnu = assigning inverse matrix to inverm 
##      - dobijInverznu = returning inverse matrix  
## Function for calculating inverse matrix, but first check is there existing matrix. 
## If statement, at the begging, checking is mtx NULL.  
## TRUE branch calculates invrse matrix and assigning to function for seting inverse matrix (dodeliInverznu). 
## FALSE branch just returns calcualted inverse matrix.   
## 
## 
## Write a short comment describing this function

makeCacheMatrix <- function(mtx = matrix()) {
    
## Initialize environment, assinging values 
    inverm <- NULL
    dodeli <- function( matrix ) {
        mtx <<- matrix
        inverm <<- NULL
    }
## Funtion for get the matrix and this returns matrix 
    dobij <- function() {
        mtx
    }
## Function for assigning inverse matrix and assinging it to different environment 
    dodeliInverznu <- function(inverse) {
        inverm <<- inverse
    }
    
## Function for getting inverse matrix 
    dobijInverznu <- function() { 
        inverm
    }
## Creating list with functions, assigning name to each element  
    list(dodeli = dodeli, dobij = dobij, dodeliInverznu = dodeliInverznu, dobijInverznu = dobijInverznu) 
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    mtx <- x$dobijInverznu()     #
    if (is.null(mtx))  { 
# Set data to function for get matrix
        podaci <- x$dobij()              
# Calculate inverse matrix via solve() funcion 
        mtx <- solve(podaci) 
# Set inverse matrix to functon for assign inverse 
        x$dodeliInverznu(mtx)  
        mtx 
    } 
    else { 
        message("getting cached data")
# if mtx already calculated then print
        return(mtx)                       
    }
}
