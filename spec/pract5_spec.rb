require 'pract05'
module Pract05
  describe "Pregunta" do
    before :each do
      @p1=Pregunta.new("Seleccione cuanto vale. 2 + 4",6,[7,2,3])
      puts @p1.texto.class
    end

    context "Des" do
      describe "Pregunta1" do
	it "tenemos una pregunta" do
	  @p1.texto.should == "Seleccione cuanto vale. 2 + 4"
	  @p1.correcta.should == 6
	  @p1.distraccion.should == [7,2,3]
	  #@p1.texto.should eq("2+2")
	end
	it "tenemos una respuesta correcta" do
	  expect(@p1.correcta).should == 6
	end
	it "Deben existir tres componentes" do
	  expect{Pract05::Pregunta.new(:texto =>'5*8 = ?')}.to raise_error(ArgumentError)
	end
	it "Deben imprimirse la pregunta" do
	  @p1.imprimir_pregunta
	end
      end  
    end
  end
end