x0 <- 0
x1 <- 1
x2 <- 2
x3 <- 3

taylor <- function(x,pn,n){        ##Calcula Polinomio de Taylor
  y <- x^n/factorial(n)+pn
  if(n==0){
    y <- x
  }
  y
}

x <- 1     ##X=1

pn1 <- taylor(x,0,x0)
pn2 <- taylor(x,pn1,x1)
pn3 <- taylor(x,pn2,x2)

p1 <- pn1                           ##Calcula Metodo de Aitken
p2 <- ((pn2-pn1)^2)
p3 <- (pn3-2*pn2+pn1)
res <- (p1-(p2/p3))
j <- 0

while (j<15) {
  p1 <- pn1                           ##Calcula Metodo de Aitken
  p2 <- ((pn2-pn1)^2)
  p3 <- (pn3-2*pn2+pn1)
  res2 <- (p1-(p2/p3))
  pn1 <- pn2                         ##Calcula Metodo de Aitken
  pn2 <- pn3
  pn3 <- taylor(x,pn3,x3)
  print(paste0("La Convergencia es: ",abs(res2)/abs(res)^1))
  x3 <- x3+1
  j <- j+1
  res <- res2
}