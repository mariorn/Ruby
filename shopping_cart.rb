
class Item 

  attr_reader :price

  def initialize(name, price)
      @name = name
      @price = price
  end

  def check_discount 

    @price

  end 

end

class Houseware < Item

  def initialize(name, price)

    super
    @price = check_discount price;

  end

  def get_discount
    @price * 0.05
  end

  def check_discount price

    if price >= 100

      price - get_discount

    else
      price

    end
  end

end

class Fruit < Item

  def initialize(name, price)

    super
    @price = check_discount;

  end

  def get_discount
    @price * 0.1
  end

  def check_discount 

    dia = Time.now.strftime("%A")

    if (dia == "Saturday" || dia == "Sunday")
      @price - get_discount

    else
      @price
    end

  end

end


class ShoppingCart

  def initialize
    @items = []
  end

  def add_item(item)

  	@items.push(item)

  end


  def check_discount(total)

    if @items.length >= 5 
      total - total/10

    else
      total
    end

  end


  def checkout
  	total = 0

    #Obtenemos el precio total de todos los productos
  	@items.each do |item|
      total += item.price
  	end

    #Obtenemos el total al descontar por >= 5 productos
    total = check_discount(total)

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




