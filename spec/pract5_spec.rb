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
	it "Deben imprimirse la pregunta" do
	  @p1.to_s.should == "Seleccione cuanto vale. 2 + 4\n6\n7\n2\n3\n"
	end
      end  
    end
  end
  
  
  describe "Examen" do
    before :each do
      @q = Pract05::Pregunta.new("Seleccione cuanto vale. 2 + 4",6, [7,2,3])
      @n = Pract05::Nodo.new(@q, nil)
      @lista = Pract05::ListaEnlazada.new(@n)
    end
    
    context "Test de clase Nodo" do
      it 'Comprobando la clase nodo' do
	expect(Pract05::Nodo).to respond_to(:new)
	expect(@n).to respond_to(:value)
	expect(@n).to respond_to(:next)
      end
      
      it 'Valores de la clase nodo' do
	expect(@n.value).to eq(@q)
	expect(@n.next).to eq(nil)
      end
    end
    
    context "Test de clase ListaEnlazada" do
      it 'Comprobando la clase ListaEnlazada' do
	expect(Pract05::ListaEnlazada).to respond_to(:new)
	expect(@lista).to respond_to(:top)
	
      end

      it 'Valores de la clase ListaEnlazada' do
	expect(@lista.top).to eq(@n)
      end
    end
  end
  
  describe "Test" do
    before :each do
      @q1 = Pract05::Pregunta.new("¿Cuál es la salida del siguiente código de Ruby? \nclass Xyz\n  def pots\n    @nice\n  end\nend\n\nxyz = Xyz.new\np xyz.pots\n","nil",["#<Xyz:0xa000208"]) 
      @q3 = Pract05::Pregunta.new("La siguiente definición de un hash en Ruby es válida: \nhash_raro = {\n  [1, 2, 3] => Object.new(),\n  hash.new => :toto\n}", "Cierto", "Falso");
      @q4 = Pract05::Pregunta.new('Cuál es la salida del siguiente código Ruby?\nclass Array\n  def say_hi\n    "HEY!"\n  end\nend\n\np [1, "bob"].say_hi', "HEY!", ["1", "bob", "Ninguna de las anteriores"]);
      @q5 = Pract05::Pregunta.new("¿Cuál es el tipo del objeto en el siguiente código en Ruby?\nclass Objeto\nend", "Ninguna de las anteriores", ["Una instancia de la clase", "Una constante", "Un objeto"]);
      @q6 = Pract05::Pregunta.new("Es apropiado que una clase Tablero herede de una clase Juego", "Cierto", "Falso");
    end
  end
  
end