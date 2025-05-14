module Main where

main :: IO ()
main = do
    putStrLn "Testando as funções matemáticas:"
    putStrLn $ "Soma: " ++ show soma
    putStrLn $ "Subtração: " ++ show subtracao
    putStrLn $ "Multiplicação: " ++ show multiplicacao
    putStrLn $ "Dobro de 5: " ++ show (dobro 5)
    putStrLn $ "Dobro de 10: " ++ show (dobro 10)
    putStrLn $ "Quadrado de 4: " ++ show (quadrado 4)
    putStrLn $ "Fatorial de 5: " ++ show (fatorial 5)
    putStrLn $ "É par? 6: " ++ show (ehPar 6)
    putStrLn $ "É par? 7: " ++ show (ehPar 7)
    putStrLn $ "Máximo entre 10 e 20: " ++ show (maximo 10 20)
    putStrLn $ "Mínimo entre 10 e 20: " ++ show (minimo 10 20)
    putStrLn "\nTestando funções de string:"
    putStrLn $ "Inverter 'Haskell': " ++ inverter "Haskell"
    putStrLn $ "Contar vogais em 'Haskell': " ++ show (contarVogais "Haskell")
    putStrLn $ "Primeira palavra de 'Haskell é legal': " ++ primeiraPalavra "Haskell é legal"

-- Funções matemáticas existentes
soma :: Integer
soma = 2 + 3

subtracao :: Integer
subtracao = 5 - 2

multiplicacao :: Integer
multiplicacao = 4 * 3

dobro :: Num a => a -> a
dobro x = x * 2

-- Novas funções matemáticas
quadrado :: Num a => a -> a
quadrado x = x * x

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

ehPar :: Integer -> Bool
ehPar n = n `mod` 2 == 0

maximo :: Ord a => a -> a -> a
maximo x y = if x > y then x else y

minimo :: Ord a => a -> a -> a
minimo x y = if x < y then x else y

-- Funções de manipulação de string
inverter :: String -> String
inverter = reverse

contarVogais :: String -> Int
contarVogais = length . filter (`elem` "aeiouAEIOU")

primeiraPalavra :: String -> String
primeiraPalavra = takeWhile (/= ' ') . dropWhile (== ' ')

-- Testando a função dobro
resultado :: Integer
resultado = dobro 5
-- Resultado: 10
