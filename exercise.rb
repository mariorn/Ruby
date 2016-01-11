
#Obtenemos el fichero fuente
puts "What is the source file?"
source = gets.chomp

#Obtenemos el fichero destino
puts"What is the destination file?"
dest_file = gets.chomp

#Leemos el fichero fuente
source_content = IO.read(source)

#Escribimos el contenido en el nuevo fichero destino
IO.write(dest_file,source_content)