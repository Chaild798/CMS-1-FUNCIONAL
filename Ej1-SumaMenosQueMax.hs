-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))

sumaMenosQueMax :: (Int, Int, Int) -> Bool
-- Completar acá la definición de la función
sumaMenosQueMax (a, b, c) | (maximo3 a b c) > (minimo3 a b c) + (medio a b c) = True
                          | otherwise = False
-- Pueden agregan las funciones que consideren necesarias

--saco el maximo entre tres enteros
maximo3 :: Int -> Int -> Int -> Int
maximo3 a b c = maximo2 (maximo2 a b) c

--saco el maximo entre dos enteros - auxiliar de maximo3
maximo2 :: Int -> Int -> Int
maximo2 a b | a >= b = a 
            | b > a = b
            | otherwise = undefined
            
--saco el minimo entre tres enteros
minimo3 :: Int -> Int -> Int -> Int
minimo3 a b c = minimo2 (minimo2 a b) c

--saco el minimo entre dos enteros - auxiliar de minimo2
minimo2 :: Int -> Int -> Int
minimo2 a b | a <= b = a
            | b < a = b
            | otherwise = undefined

--saco el elemento que es mayor o igual al minimo y menor o igual al maximo dados tres enteros
medio :: Int -> Int -> Int -> Int
medio a b c = segundoElemento (ordenarTerna (a, b, c))

--ordeno una terna para que cada elemento sea menor o igual al que le sigue - auxiliar de medio
ordenarTerna :: (Int, Int, Int) -> (Int, Int, Int)
ordenarTerna (a, b, c) | a <= b && b <= c = (a, b, c)
                       | a <= c && c <= b = (a, c, b)
                       | b <= a && a <= c = (b, a, c)
                       | b <= c && c <= a = (b, c, a)
                       | c <= a && a <= b = (c, a, b)
                       | c <= b && b <= a = (c, b, a)
                       | otherwise = undefined

--saco el segundo elemento de una terna - auxiliar de medio
segundoElemento :: (Int, Int, Int) -> Int
segundoElemento (a, b, c) = b