require_relative 'cookie'
require_relative 'shape_and_color' 
#modelo
class CookieShop
  
  extend ShapeAndColor

  def self.create_cookie(type)
    case type
    when 1
      @cookie = CookieChocolateChips.new
    when 2
      @cookie = CookieHoneyOats.new
    when 3
      @cookie = CookieBlack.new
    else
      nil
    end
  end

  def self.shape_and_color
    @crazy_cookie = self.shape_color
  end
	
	def self.bake_cookies(lotes)
    "----------------------------------\n"+
    "Se gasta #{@cookie.flour_count*lotes} en harina #{@cookie.water_count*lotes} en agua y #{@cookie.cooking_time} minutos de coccion\n"+
    "La galleta te saldra en forma de #{@crazy_cookie[0]} y de color #{@crazy_cookie[1]}"
	end

  def self.cookies_ready?(input)
    input == "y" ? true : false
  end

end


#view
class ViewCookies
  #muestra selecione el tipo de galleta
  def self.user_select_cookie
    puts "Hola, vas a crear tu lote de galletas, responde lo siguiente:"
    puts "1- Chocolate chips"
    puts "2- Oats chips"
    puts "3- Black chips"
    puts "Ingresa el numero del tipo de galleta:"
    kind_of_cookie = gets.chomp.to_i
  end
  #muestra cuantos lotes quiere?
  def self.lotes_amount
    puts "Cuantos lotes quieres?"
    lotes = gets.chomp.to_i
  end
  #muestra le indico de que forma y color y cuantas galletas le salen
  def self.prints(input)
    puts input
  end

  def self.continue_cooking?
    puts "Quieres continuar con la preparacion? y/n"
    continue = gets.chomp
  end

  def self.ready(input)
    if input 
     puts "Galletas listas!!" 
     else
      puts "buuuu no horneaste nada"
    end
  end 

end

#controller
class ControllerCookies
  #seleccionar el tipo de galleta y crear una instancia de ella
  def initialize
    cookie_run
  end

  def cookie_run
    kind_of_cookie = ViewCookies.user_select_cookie
    CookieShop.create_cookie(kind_of_cookie)
    lotes = ViewCookies.lotes_amount
    CookieShop.shape_and_color
    bake = CookieShop.bake_cookies(lotes)
    ViewCookies.prints(bake)
    continue = ViewCookies.continue_cooking?
    final = CookieShop.cookies_ready?(continue)
    ViewCookies.ready(final)
  end
end

cookie = ControllerCookies.new