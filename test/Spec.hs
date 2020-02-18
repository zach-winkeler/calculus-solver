import Structures
import Data.MultiSet

main :: IO ()
main = do {
    putStrLn "Tests are currently just example data:";
    putStrLn (show example1);
    putStrLn (show example2);
    putStrLn (show example3)}

-- f(x)
example1 = 
    Application 
        (Variable "f") 
        (Reference (Variable "x"))

-- 1+2+3
example2 = 
    ACOperation 
        Add 
        (Data.MultiSet.fromList [(Constant 1), (Constant 2), (Constant 3)])

-- d/dz(z^2)
example3 = 
    Derivative 
    (Variable "z") 
    (BinaryOperation 
        Pow 
        (Reference (Variable "z")) 
        (Constant 2))
