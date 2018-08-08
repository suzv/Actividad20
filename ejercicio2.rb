module Formula
  def perimetro(x,y)
    per = (x.to_i + y.to_i) * 2
    puts "el perimetro es: #{per}"
  end
  def area(x,y)
    ar = x.to_i * y.to_i
    puts "el area es: #{ar}"
  end
end

class Rectangulo
  include Formula
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    "la medida de base es: #{base} y la de altura: #{altura}"
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end
  def lados
    "la medida de el lado es: #{lado}"
  end
end

print Rectangulo.new(1,2).lados
puts"\n"
print Cuadrado.new(2).lados
puts"\n"
Rectangulo.new(1,2).perimetro(1,2)
puts"\n"
Rectangulo.new(1,2).area(1,2)
puts"\n"
print Cuadrado.new(2).perimetro(2,2)
puts"\n"
print Cuadrado.new(2).area(2,2)
