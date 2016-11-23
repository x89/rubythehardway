class Item
  attr_reader :name, :price, :bogof

  def initialize(name, price, bogof=false)
    @name = name
    @price = (sprintf "%.2f", price).to_f
    @bogof = bogof
  end

  def to_s
    return @name
  end
end


class ShoppingList
  attr_accessor :items
  attr_reader :total_price

  def initialize
    @items = Array.new
    @total_price = 0.0
  end

  def add_item(item)
    if @items.include?(item) then
      count = @items.select{|i| i == item}.count
      if count % 2 == 0 then
        @total_price += item.price
      end
    else
      @total_price += item.price
    end
    @items.push(item)
  end

  def list_items
    puts "Your basket:"
    @items.each do |item|
      puts "\t#{item} £#{item.price}"
    end
  end
end

phone = Item.new("Nokia 3310", 120.12)
book = Item.new("Consider Phlebas", 8.50, true)

shopping_list = ShoppingList.new
shopping_list.add_item(phone)
shopping_list.add_item(book)
shopping_list.add_item(book)

shopping_list.list_items()
puts "Total cost: £#{shopping_list.total_price}"
