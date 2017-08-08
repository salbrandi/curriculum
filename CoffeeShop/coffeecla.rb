# encoding: utf-8
#!/usr/bin/env ruby

class Shop
@@type = "Coffee"
@@menu = {2.99=>"Latte",
          1.89=>"Americano",
          2.89=>"Espresso",
          2.89=>"Cappuccino",
          3.99=>"Mexican Cocoa"}

  def new()
  end

  def initialize(location, price_tier, extras)
    @location, @price_tier, @extras = location, price_tier, extras
  end

  attr_accessor :location
  attr_accessor :price_tier
  attr_accessor :menu
  attr_accessor :extras

  def Shop.get_type()
    @@type
  end

  def Shop.get_menu()
    @@menu
  end

end

class Customer
  def initialize(name, address, order, payment, payment_type, order_type)
    @name, @address, @order, @payment, @payment_type, @order_type = name, addr, order, payment, pay_type, ord_type
  end

  attr_accessor :name
  attr_accessor :address
  attr_accessor :order
  attr_accessor :payment
  attr_accessor :payment_type
  attr_accessor :order_type

end

class Coffee
  def initialize(order_id, type, size, extras)
    @order_id, @type, @size, @extras = id, type, size, top
  end
    attr_accessor :id
    attr_accessor :size
    attr_accessor :type
    attr_accessor :top

end

def convert_price(price, size)
  lsize = size.downcase
  case lsize
  when "med", "m", "medium"
    return med = (price*1.5).round(2)
  when "large", "l"
    return large = (price*1.75).round(2)
  when "small", "s"
    return price
  end
end

def check_valid_input?(str)
  if str.empty? == false
    return true
  else
    puts "#{str} is not a valid option"
  end
end


def make_order(coffee_type, extras)
  id = Coffee.new(coffee_type, extras)
end

def place_order()
  menu = []
  Shop.get_menu.each do |price, item|
    med = convert_price(price, "m" )
    large = convert_price(price, "l")
    menu << "#{item}: S $#{price}    M $#{med}    L $#{large}"
  end
  puts "Choose an item from the menu:"
  menu.each do |item|
    puts "#{item}"
  end
print ' '
input = gets.chomp
size = ""
price = 0
Shop.get_menu.each do |price, item|
  if input == item && check_valid_input?(input)
    puts "What size would you like that in"
    print "   S   M   L   "
    size = gets.chomp
    end
  end
  if check_valid_input?(size)
    if size == 'S' || size == 'M' || size == 'L'
      tax = 1.08
      final_price = convert_price(price, size)*tax
      print "Great! What name should this order be to? "
      name = gets.chomp
      if check_valid_input?(name)
        puts "Hi #{name}! Would you like to pick up your coffee or have it delivered?"
        print "   Pickup   Delivery   "
        acquire_type = gets.chomp.downcase
        if acquire_type == 'delivery'
          print "Ok, then we'll need your address:  "
          addr = gets.chomp
          puts "Finally, we'll need some payment info. Could you please enter the following: card-number/expiration-date/card-holder-name/security-code"
          cardinfo = gets.chomp.split('/')
          puts "Everything looks good. If the payment is successfull, you order will be ready for #{acquire_type} in a few minutes at the location #{addr}"
        elsif acquire_type == 'pickup'
          addr = '221 North Street'
          puts "Finally, we'll need some payment info. Could you please enter the following: card-number/expiration-date/card-holder-name/security-code"
          cardinfo = gets.chomp.split('/')
          puts "Everything looks good. If the payment is successfull, you order will be ready for #{acquire_type} in a few minutes at the location #{addr}"
        else exit
        end
      end
    end
  end
end

def deliver_order(order_id)

end

if __FILE__ == $PROGRAM_NAME

place_order()

end
