
#Eliminamos caracteres . y !
def filtrado_caracteres (cadena)

	if cadena.include? "."
		cadena = cadena.gsub ".", ""
	end

	if cadena.include? "!"
		cadena = cadena.gsub "!", ""
	end

	return cadena
end

#Función que mostrará la cadena ordenada alfabéticamente
def mostrar_ordenado (cadena)

	#Filtramos la cadena para eliminar caracteres de puntuación
	cadena = filtrado_caracteres (cadena)

	#Partimos la cadena, cada palabra pasa a mayúscula y se ordena
	cadena_aux = cadena.upcase.split(" ").sort

	#Partimos la cadena
	cadena = cadena.split(" ")

	#Definimos el array de salida
	array = []

	cadena_aux.each do |mayus|
		cadena.each do |orig|
			if orig.upcase == mayus
				array << "#{orig} "
			end
		end
	end

	print array
	puts ""
end


#Cadenas iniciales
cadena1 = "Have a nice day."
cadena2 = "Fools fall for foolish follies."	
cadena3 = "Ruby is a fun language!"

#Mostramos cadena1
mostrar_ordenado(cadena1)
#Mostramos cadena2
mostrar_ordenado(cadena2)
#Mostramos cadena3
mostrar_ordenado(cadena3)



