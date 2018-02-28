x0 <- 1
x1 <- 2
x2 <- 3

for(i in 1 : 10){
  if(x0!=exp(1)){
    p1 <- exp(2)
    p2 <- ((exp(x2)-exp(x1))^2)
    p3 <- (exp(x2)-2*exp(x1)+exp(x0))
    
    res <- (p1-(p2/p3))
    
    print(paste0("La convergencia de la sucesión es: ",res))
    
    x0 <- res
    x1 <- res*2
    x2 <- res*3
  }
}

