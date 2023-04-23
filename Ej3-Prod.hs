-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(prod(x ::(Integer)))
  }

prod :: Integer -> Integer
-- Completar la definición de la función
prod n = productoSimple (2*n) 

-- Pueden agregan las funciones que consideren necesarias

productoSimple :: Integer -> Integer
productoSimple n | n == 1 = (n^2 + 2*n)
                 | n > 1 = (n^2 + 2*n) * productoSimple (n-1)

--prod tiene que ir desde 1 hasta 2n, no puedo hacer llamadas recursivas con prod (2*n-1) porque me estaría salteando términos.
--productoSimple se encarga de multiplicar los términos de 2n a 1, basta pasarle 2n como su parametro en la primera llamada y no se salteará nada.