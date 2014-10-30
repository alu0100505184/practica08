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
      @q = Pregunta.new("Seleccione cuanto vale. 2 + 4",6, [7,2,3])
      @n = Nodo.new(@q, nil)
      @lista = Pract05::ListaEnlazada.new(@q)
    end
    
    context "Test de clase Nodo" do
      it 'Comprobando la clase nodo' do
	expect(Nodo).to respond_to(:new)
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
      
      it 'Insertar otro elemento' do
	puts ("1º elemento")
	puts (@n2.value.to_s)
	puts ("Tamaño")
	puts (@lista.size.to_s)
	
	@q2 = Pregunta.new("AAAAAASeleccione cuanto vale. 2 + 4",6, [7,2,3])
	@n2 = Nodo.new(@q2, nil)
	@lista.push(@n2)
	@n2 = @lista.pop()
	puts ("2º elemento")
	puts (@n2.value.to_s)
	puts ("Tamaño")
	puts (@lista.size.to_s)
      end
    end
  end
end