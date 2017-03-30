import Data.Char
import Data.List

--output :: String -> String


--main :: IO
main = do

 putStrLn "Input in format FirstName LastName FirstName2 LastName2 or FirstName LastName fileName"
 putStrLn "What's your first name?"
 firstName <- getLine
 putStrLn "What's your last name?"
 lastName <- getLine
 let wholeName = firstName ++ lastName
 putStrLn "What's the other person's name?"
 firstName2 <- getLine
 putStrLn "What the other person's last name?"
 lastName2 <- getLine
 
 let wholeName2 = firstName2 ++ lastName2
 --print (wholeName2)
 let ascii = map (fromEnum) wholeName
 let remName1 = map(\x -> mod x 10) ascii
 let addedAscii = sum remName1

 let ascii2 = map(fromEnum) wholeName2
 let remName2 = map(\x -> mod x 10) ascii2
 let addedAscii2 = sum remName2
 let len1 = length wholeName
 let len2 = length wholeName2
 let totalLength = len1 + len2
 let tieAscii = addedAscii + addedAscii2
 let step1 = tieAscii * 5
 let step2 = (step1 `div` (totalLength*4) + 1)
 let step3 = step2 * 10
 --print (step3)
 --step 2 subtraction and step 3 adding
 let sub1 = abs((len1)-(len2))
 --print sub1
 let subtract1 = sub1 * 3
 let step4 = step3 - subtract1
 --print (subtract1)
 let intersectNames = intersect wholeName wholeName2
 --print (intersectNames)
 let add1 = length intersectNames
 let add2 = add1 * 2
 print add2
 let adder = myMax add2
 print adder
 let step5 = step4 + adder
 --print (step5)
 --step 4
 let myScore1 = myScore len1
 print myScore1
 --putStrLn "+4"
 let myScore2 = myScore len2
 print myScore2
 --putStrLn "+3"
 let myScore3 = myScore1 + myScore2
 let step6 = step5 + myScore3
 print step6
 let rare = "xzvkquy"
 --print (rare)
 let bothNames = wholeName ++ wholeName2
 --print bothNames
 let intersectRare = intersect rare bothNames
 --print intersectRare
 --print "number of rare letters"
 let addRare = (length intersectRare) * 5
 let step7 = step6 + addRare 
 --print step7
 --step 5
 let myScore4 = myScoreSub len1
 let myScore5 = myScoreSub len2
 let myScore6 = myScore4 + myScore5
 let step8 = step7 - myScore6
 --print step8
 --print "after subtract"
 --step6
 
 putStrLn $ wholeName ++ " and " ++ wholeName2 ++ " have the following score out of a 100 at a successful relationship"
 print step8
 
 
myScore x
 |(x >=7 && x <= 14) = ((x-6))
 |(x >= 15 && x <= 22) = (7 + (x - 14))
 | otherwise = 0
myScoreSub x
 | x > 22 = (4*(x-21))
 | otherwise = 0
myMax x
 | (x > 10) = 10
 | otherwise = x
 
 
 --putStrLn $ "name" ++ inpStr
 --print inpStr
 --let outStr = output inpStr
 --ofile <- inpStr[0] + ".txt"
 --if inpStr argv < 4, then option is file
 --ifile <- inpStr[2]
 --s <- readFile ifile
 -- putStrLn (inStr[0] + ", open the file inStr[0] + ".txt to find your match!"
 --writeFile ofile (tLove + " " + lRate + out of all of them)
 