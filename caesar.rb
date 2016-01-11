

def solve_cipher(input, desplaza)

	array = input.split("")
	array_res = []

	array.each do |caracter|

		caracter_num = caracter.ord + desplaza

		#Comprobamos si el carácter con el desplazamiento es menor que la "a" o distinto a " "
		if caracter_num < 97 && caracter != " "
			array_res << ( 122 - ( 97 - caracter_num) + 1 ).chr
		#Comprobamos si el carácter con el desplazamiento es mayor que la "z"
		elsif caracter_num > 122
			array_res << ( 97 + (caracter_num - 122) ).chr
		#Si es el " " lo insertamos tal cual
		elsif caracter.ord == 32
			array_res << " "
		else
			array_res << caracter_num.chr
		end

	end

puts array_res.join

end


solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)

