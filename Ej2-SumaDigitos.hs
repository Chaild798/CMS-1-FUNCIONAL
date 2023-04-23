-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }

sumaDigitos :: Int -> Int
-- Completar la definición de la función
sumaDigitos n | div n 10 == 0 = mod n 10
              | div n 10 > 0 = mod n 10 + sumaDigitos (div n 10)

-- Si la division entera del numero en 10 da cero, entonces es que es un numero de un solo dígito. Luego, se suma ese numero.
-- Si la division entera del numero es mayor a 10, es porque tiene más de un dígito, luego, se suma el numero que esta a la derecha del todo (mod n 10) y se llama recursivamente a la función para sumar a todos aquellos que estén a la izquierda
-- Pueden agregan las funciones que consideren necesarias