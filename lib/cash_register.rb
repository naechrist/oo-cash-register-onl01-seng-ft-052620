#class CashRegister
 
 #attr_accessor :total, :discount, :price, :items
 
 #def initialize(discount = 0)
  # @total = 0 
  # @discount = discount
   #@items = [] 
  #end
  
  #def add_item(item, price, quantity = 1)
  #  @price = price
   # @total += price * quantity
   # if quantity > 1 
   #   counter = 0 
    #  while counter < quantity
     # @items << items
      #counter += 1 
      #end
  #  else 
   #   @items << item 
#    end
 # end
  
#  def apply_discount
#    if @discount > 0 
#      @to_take_off = (price * discount)/100 
#      @total -= @to_take_off
#      return "After the discount, the total comes to $#{total}."
#    else 
#      return "There is no discount to apply."
#    end
#  end
  
#  def void_last_tranaction
#    @total -= @price 
#  end
  
#end

class CashRegister
  attr_accessor :discount, :total
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info

    @total += price * quantity

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end 

  def items
    item_names = []
    @cart.each do | item_info |
      #test expects product name * quantity...
      for qty in 1..item_info[:quantity] 
        item_names << item_info[:name]
      end 
    end 
    item_names
  end 
  
def void_last_tranaction
    @total -= @price 
  end
end