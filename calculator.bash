#! /bin/bash

#Menu Driven Calculator
# 1. Addition  2. Subtraction  3. Multiplication  4. Division 
# 5. Percentage   6. Exponential    7. Root    8. Factorial
# 9. Sin         10. Cos          11. log 

echo "***********************Calculator*************************"

echo "Choose one of the options below:"
echo -e "1. Addition\t2. Subtraction\t3. Multiplication\t4. Division"
echo -e "5. Modulus\t6. Exponential\t7. Root\t\t\t8. Factorial"
read choice

case $choice in
	1)
		echo "Enter 2 numbers (+)"
		read a b
		echo "$a + $b =  "$((a+b))
		;;
	2) 
		echo "Enter 2 numbers (-)"
	         read a b
		 echo "$a - $b = "$((a-b))
		 ;;
        3)
		echo "Enter 2 numbers (*)"
		read a b
		echo "$a * $b = "$((a*b))
		;;
	4)
		echo "Enter 2 number (/)"
		read a b
		echo "$a / $b = "$((a/b))
		;;
	5)
		echo "Enter 2 numbers (%)"
		read a b
		echo "$a % $b = "$((a%b))
		;;
	6)
		echo "Enter 2 numbers (exp)"
		read a b
		echo "$a exp $b = "$((a^b))
		;;
	7)
		echo "Enter a number (sqrt)"
		read a
		echo "sqrt of $a = "$(echo "scale=2; sqrt($number)" |bc)
		;;
	8)
		echo "Enter a number (fact)"
		read a
		fact = 1
                count = 1
		while [$count -le $a]; do
                       $fact = $fact * $count
		       ((count++))
	       done
		echo "$a! = "$fact
		;;
	
 esac
