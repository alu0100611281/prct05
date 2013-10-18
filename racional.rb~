
require "./gcd.rb"

class Fraccion
  
attr_reader :num, :denom

  def initialize(n,d)
    raise TypeError, "El denominador no puede ser 0" if d.eql?0
    m=gcd(n,d)
    @num=n/m
    @denom=d/m
  end
  
   def to_s    
    "#{@num}/#{@denom}"
  end
  
  def suma(other)
   m=gcd(@denom,other.denom)
   x=m/@denom
   y=m/other.denom
   Fraccion.new((@num*x)+(other.num*y),m)
  end
  
  def resta(other)
   m=gcd(@denom,other.denom)
   x=m/@denom
   y=m/other.denom
   Fraccion.new((@num*x)-(other.num*y),m)
  end
  
  def multiplicacion(other)
    Fraccion.new(@num*other.num,@denom*other.denom) 
  end
  
  def division(other)
   Fraccion.new(@num*other.denom,@denom*other.num) 
  end
  
 
end
