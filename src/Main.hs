module Main where
import Data.Char
import Data.DualMap
import Data.List
import Data.Maybe

main::IO()
main = do 
        putStrLn "Input string to convert to Morse Code"
        str <- getLine
        putStrLn $ strToMorse str

strToMorse :: String -> String
strToMorse a = intercalate "\n" (map (`letterToMorse` morseMap) a) ++ ('\n' : endContact)
        where endContact = "...-.-"

letterToMorse :: Char -> DualMap Char String -> String
letterToMorse a b = fromMaybe (error $ "Unsupported character: " ++ (a : "!!!")) (lookupL (toLower a) b)

-- Simple dual map representing the relationship between characters and Morse code.
morseMap :: DualMap Char String
morseMap = fromList [('a', ".-"),('b', "-..."),('c', "-.-."),('d', "-.."),('e', "."),('f', "..-.")
                    ,('g', "--."),('h', "...."),('i', ".."),('j', ".---"),('k', "-.-"),('l', ".-..")
                    ,('m', "--") ,('n', "-."),('o', "---"),('p', ".--."),('q', "--.-"),('r', ".-.")
                    ,('s', "..."),('t', "-"),('u', "..-"),('v', "...-"),('w', ".--"),('x', "-..-")
                    ,('y', "-.--"),('z', "--..")
                    ,('1', ".----"),('2', "..---"),('3', "...--"),('4', "....-"),('5', "....."),('6', "-....")
                    ,('7', "--..."),('8', "---.."),('9', "----."),('0', "-----")
                    ,('=', "-...-"),('?', "..--.."),('/', "-..-."),(',', "--..--"),('.', ".-.-.-")
                    ,(':', "---..."),('\'', ".----."),('-', "-....-"), ('(', "-.--."),(')', "-.--.-"),('@', ".--.-.")]