# encoding: utf-8
#!/usr/bin/env ruby

require 'securerandom'

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
  def initialize(name, address, order_content, order_id, payment, payment_type, order_type)
    @name, @address, @order_content, @order_id, @payment, @payment_type, @order_type = name, addr, order_content, order_id, payment, pay_type, ord_type
  end

  attr_accessor :name
  attr_accessor :address
  attr_accessor :order_content
  attr_accessor :order_id
  attr_accessor :payment
  attr_accessor :payment_type
  attr_accessor :order_type

end

class Drink
  def initialize(type, size, extras)
    @type, @size, @extras = type, size, top
  end
    attr_accessor :size
    attr_accessor :type
    attr_accessor :top

  def make
      puts "1 #{size} #{type} made. Toppings/additions: #{extras}"
  end

  def ready(address, shop)
    if address == shop.location
      puts "Ready to be picked up to "
    end

end

class Coffee < Drink
  def initialize(variety, type, size, extras)
    @variety = variety
    super(type, size, extras)

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

class OrderMaker(name,
                 address,
                 order_content,
                 order_id,
                 payment,
                 payment_type,
                 order_type,
                 type,
                 size,
                 extras,
                 coffee)
  def initialize(name,
                 address,
                 order_content,
                 order_id,
                 payment,
                 payment_type,
                 order_type,
                 type,
                 size,
                 extras)
    @name, @address, @order_content, @order_id, @payment,
    @payment_type, @type, @size, @extras =
    name, addr, order_content, order_id, payment, pay_type, type, size, extra
  end

  cust = Customer.new(@name,
               @address,
               @order_content,
               @order_id,
              @payment,
              @payment_type)
  if coffee = true
    order = Coffee.new('Columbian', type, size, extra)
  else
    order = Drink.new('Columbian', type, size, extra)






  attr_accessor :name
  attr_accessor :address
  attr_accessor :order_content
  attr_accessor :order_id
  attr_accessor :payment
  attr_accessor :payment_type
  attr_accessor :order_type
  attr_accessor :size
  attr_accessor :type
  attr_accessor :top




def make_order(type, size, extras, name, payment, payment_type, address)
  order_content = Coffee.new('Columbian', coffee_type, size, extras)
  customer = Customer.new(name, address, order_content, )
  # Here we would insert into some data base or storage system
  return customer
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
          puts "Everything looks good. If the payment is successfull, you order will be ready for #{acquire_type} in a few minutes to the location #{addr}"
          make_order()
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
  r = Random.new()
  time = r.rand(15...20)
  systime = Time.new
  hour = systime.hour % 12
  min = systime.min
  order_time = i-time if i < time else 60-time
  order_arrival = i + time if i + time < 60 else time
  start_min = order_time
  end_min = order_time
  if end_min == time
    hrplu = hour + 1
    final_t = "#{hrplu}:#{end_min}"
  else
    final_t = "#{hour}:#{end_min}"
  puts "you ordered at #{hour}:#{start_min}, we delivered at #{final_t}"

end

if __FILE__ == $PROGRAM_NAME

place_order()

end
