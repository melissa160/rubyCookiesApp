module ShapeAndColor
  def shape_color
    final_shape_and_color = []
    shapes = ["cuadrado", "arbol", "estrella"]
    colors = ["verde", "morado", "azul"]
    final_shape_and_color << shapes[rand(0..2)]
    final_shape_and_color << colors[rand(0..2)]
    final_shape_and_color
  end

end