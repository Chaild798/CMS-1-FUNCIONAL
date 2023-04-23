-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(combinacionesMenoresOiguales(x ::(Integer)))
  }

combinacionesMenoresOiguales :: Integer -> Integer
-- Completar la definición de la función
combinacionesMenoresOiguales n = iteracionesDeI n n
-- Pueden agregan las funciones que consideren necesarias

--suma de las iteraciones desde i=n hasta i=1 para un n fijo - auxiliar de combinacionesMenoresOiguales
iteracionesDeI :: Integer -> Integer -> Integer
iteracionesDeI n i | i == 1 = iteracionesDeJ n i n
                   | i > 1 = iteracionesDeJ n i n + iteracionesDeI n (i-1)
                   | otherwise = undefined

--suma de las iteraciones de j=n hasta j=1 para unos n e i fijos - auxiliar de iteracionesDeI
iteracionesDeJ :: Integer -> Integer -> Integer -> Integer
iteracionesDeJ n i j | j == 1 && (productoMenorIgual i j n) = 1
                     | j > 1 && productoMenorIgual i j n = 1 + iteracionesDeJ n i (j-1)
                     | j > 1 && not (productoMenorIgual i j n) = iteracionesDeJ n i (j-1)
                     | otherwise = undefined

--condición que debe cumplirse - auxiliar de iteracionesDeJ
productoMenorIgual :: Integer -> Integer -> Integer -> Bool
productoMenorIgual i j n | i*j <= n = True
                         | otherwise = False


