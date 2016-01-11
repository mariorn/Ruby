
class Item 

  def initialize(name, price)
      @name = name
      @price = price
  end

  def get_price
    return @price
  end

end

class Houseware < Item

  def get_discount
    return 0.05 * @price
  end

end

class Fruit < Item

  def get_discount
    return @price/10
  end

end


class ShoppingCart
  def initialize
    @items = []
  end
  def add_item (item)
  	@items.push(item)
  end

  def checkout
  	total = 0
    dia = Time.now.strftime("%A")

  	@items.each do |item|
      if item.class.to_s == "Houseware" && item.get_price >= 100
        puts "  Descuento por compra por valor superior a 100€: #{item.get_discount} €" 
        total += item.get_price - item.get_discount

      elsif item.class.to_s == "Fruit" && (dia == "Saturday" || dia == "Sunday")
        puts "  Descuento por compra en fin de semana: #{item.get_discount} €" 
  		  total+= item.get_price - item.get_discount

      else
        total += item.get_price
      end
      
  	end

  	if @items.length >= 5
  		puts "  Descuento por compra de 5 o más artículos: #{total/10} €" 
  		total = total - total/10
  	end

  	puts "Your total today is #{total} €. Have a nice day!"
  end
end


banana = Fruit.new("Banana", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

shoppingCart = ShoppingCart.new
shoppingCart.add_item banana
shoppingCart.add_item orange_juice
shoppingCart.add_item rice
shoppingCart.add_item vacuum_cleaner
shoppingCart.add_item anchovies

#Obtenemos precios
shoppingCart.checkout




