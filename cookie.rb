require "pry"
class Cookie
	attr_accessor :flour_count, :cooking_time, :sugar_count, :water_count, :product_count

	def initialize(time)
    @flour_count = 5
    @sugar_count = 0
    @water_count = 4  
    @cooking_time = time
    # @product_count = 0
	end

  # def add_product(quantity, product)
    # self.send("#{product}=",quantity)
  # end

end

class CookieChocolateChips < Cookie
	attr_accessor :chip_count

  def initialize
    super(30)
    @chip_count = 0
  end 

  def add_chips(chips)
    @chip_count +=1 
  end
end

class CookieHoneyOats < Cookie
	attr_accessor :oats_count

  def initialize
    super(45)
    @oats_count = 0
  end

  def add_oats(chips)
    @oats_count *= 2 
  end
end

class CookieBlack < Cookie
	attr_accessor :chocolate_count

  def initialize
    super(35)
    @chocolate_count = 0
  end

  def add_chocolate
    @chocolate_count *= 3
  end

end

# chochips = CookieChocolateChips.new

# # p chochips.add_suggar
# p chochips.add_chips(4)
# p chochips