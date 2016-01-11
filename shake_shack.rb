#CLASE INGREDIENTE
class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

end

#CLASE MILKSHAKE
class MilkShake
	attr_reader :ingredients, :name
  def initialize (name)
    @base_price = 3
    @ingredients = [ ]
    @name = name        
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

 def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end

  def checkout
  	cont = 1
  	puts "    Precio Base: " + @base_price.to_s + "€"
  	@ingredients.each do |ingrediente|
  		puts "    Ingrediente " + cont.to_s + ": " + ingrediente.name + "  Precio: " + ingrediente.price.to_s + "€"
  		cont += 1
	 end
  end

end

#CLASE SHOP
class ShakeShop
	def initialize
		@milkshakes = [ ]
	end

	def add_milkshake (batido)
		@milkshakes.push(batido)
	end

	def checkout
		cont = 1
		total = 0

		@milkshakes.each do |batido|
			puts "----------------------------------------------"
			puts "Batido " + cont.to_s + " -> " + batido.name 
			batido.checkout
			puts "  SubTotal:" + batido.price_of_milkshake.to_s + "€"
			total += batido.price_of_milkshake
			cont += 1
		end

		puts "----------------------------------------------"
		puts " ------------"
		puts "| TOTAL: " + total.to_s + "€ |"
		puts " ------------"
	end

end



#DEFINIMOS INGREDIENTES
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
cream = Ingredient.new("Cream", 1)
mint = Ingredient.new("Mint", 2)
vanilla = Ingredient.new("Vanilla", 1)
nougat = Ingredient.new("Nougat", 2)
pistachio = Ingredient.new("Pistachio", 2)


#DEFINIMOS BATIDOS
nizars_milkshake = MilkShake.new ("Nizars")
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

mario_milkshake = MilkShake.new ("Mario")
mario_milkshake.add_ingredient(mint)
mario_milkshake.add_ingredient(cream)
mario_milkshake.add_ingredient(chocolate_chips)

pepe_milkshake = MilkShake.new ("Pepe")
pepe_milkshake.add_ingredient(pistachio)
pepe_milkshake.add_ingredient(cream)

cris_milkshake = MilkShake.new ("Cris")
cris_milkshake.add_ingredient(nougat)
cris_milkshake.add_ingredient(vanilla)


#DEFINIMOS COMPRA
compra = ShakeShop.new
compra.add_milkshake nizars_milkshake
compra.add_milkshake mario_milkshake
compra.add_milkshake pepe_milkshake
compra.add_milkshake cris_milkshake


#MOSTRAMOS PEDIDO
compra.checkout



