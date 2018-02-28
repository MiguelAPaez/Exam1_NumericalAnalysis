  newton <- function(f,x0,Ex) {
    df <- function(x) {}
    body(df) <- D(body(f),"x")
    df2 <- function(x) {}
    body(df2) <- D(body(df),"x")
    x <- x0
    while (abs(f(x)) > Ex) {
      x <- x - f(x)*df(x)/(df2(x)^2 - f(x)*df2(x))
    }
  }

  secante <- function(f,x1,x2,Ex) {
    pn1 <- x1
    pn2 <- x2
    while (abs(f(pn1)) > Ex) {
      pn <- pn1-(f(pn1)*(pn1-pn2))/(f(pn1)-f(pn2))
      pn2 <- pn1
      pn1 <- pn
    }
    pn1
  }

  f <- function (x) {
    log(x+2) - sin(x)
  }

x <- secante(f, -1.8, 0, 1e-7)
print(paste0("Secante x: ",x))
print(paste0("f(x) es igual a: ",f(x)))
x <- newton(f,-1.8,1e-5)
print(paste0("Newton Generalizado x:",x))
print(paste0("f(x) es igual a: ",f(x)))