##this function creates a Matrix

makeCacheMatrix<-function(x=matrix()){
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setsolve<-function(solve)m<<-solve
  getsolve<-function()m
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
  
}
##this creates the inverse of the matrix
##the matrix must be square

cachesolve<-function(x,...){
  m<-x$getsolve()
  if(!is.null(m)){
    message("getting inverse matrix")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setsolve(m)
  m
}
