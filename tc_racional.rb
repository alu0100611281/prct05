require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
def test_simple
		# Instanciación
		assert_equal( "2/3", Fraccion.new(2,3).to_s )
		assert_raise( ArgumentError) { Fraccion.new(1, 0) } # Fallo
	end
	
	def test_simple2
		# Suma
		assert_equal( "4/3", (Fraccion.new(2, 3).suma( Fraccion.new(2, 3) ) ).to_s )
		
		# Resta
		assert_equal( "1/15", (Fraccion.new(2, 3).resta( Fraccion.new(3, 5) ) ).to_s )
		
		# Producto
		assert_equal( "1/4", (Fraccion.new(1, 2).multiplicacion( Fraccion.new(1, 2) ) ).to_s )
		
		# División
		assert_equal( "3/2", (Fraccion.new(1, 2).division( Fraccion.new(1, 3) ) ).to_s )
		
	end
	
	
end

=begin describe Fraccion do

  before :each do

    @obj_1=Fraccion.new(1,2)
    @obj_2=Fraccion.new(2,4)
    @aux=Fraccion.new(3,5)
  end
    it"Deberia haber un numerador y denominador" do
      @obj_1.denom.should==2
      @obj_1.num.should==1
    end
   it "Deberia ser minimo el numerador y denominador" do
        p=@obj_1.num
        q=@obj_1.denom
        m=@obj_1.gcd(p,q)
        @obj_1.denom.should == q/m
        @obj_1.num.should == p/m
  end
  it "Debe salir la fraccion en forma literal " do
        m= @obj_1.to_s
	m.should == "1/2" 
   end
  
  
  it "Metodo suma" do
   @aux= @obj_1.+(@aux)
   @aux.denom.should==10
   @aux.num.should==11
  end 
  it "Metodo resta" do
   @aux= @obj_1.-(@aux)
   @aux.denom.should==10
   @aux.num.should==-1
  end
  it "Metodo multiplicacion" do
   @aux=@obj_1*(@aux)
   @aux.denom.should==10
   @aux.num.should==3
  end
   it "Metodo division" do
   @aux=@obj_1/(@aux)
   @aux.denom.should==6
   @aux.num.should==5
  end
  
end

=end

