-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }

sumaPrimerosNImpares :: Integer -> Integer
-- Completar la definición de la función
sumaPrimerosNImpares n = iteracionesImpares (2*n-1)

-- Pueden agregan las funciones que consideren necesarias

--suma las iteraciones que son impares - auxiliar de sumaPrimerosNImpares
iteracionesImpares :: Integer -> Integer
iteracionesImpares n | n == 1 = sumaRara n
                     | n > 1 && not (esPar n) = sumaRara n + iteracionesImpares (n-1)
                     | n > 1 && (esPar n) = iteracionesImpares (n-1)

--la suma que se realiza si n es impar - auxiliar de iteracionesImpares
sumaRara :: Integer -> Integer
sumaRara n = 2*n + 2

--verifica si n es par - auxiiliar de iteracionesImpares
esPar :: Integer -> Bool
esPar n | mod n 2 == 0 = True
        | otherwise = False


