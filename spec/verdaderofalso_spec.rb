 require 'pract05'
module Pract05
    
   describe "Verdadero y falso" do
    before :each do
      @v = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego.", "verdadero")
      @v1 = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego.", "verdadero")
      @v2 = VerdaderoFalso.new("Es apropiado que una clase Tablero", "verdadero")
      @v3 = VerdaderoFalso.new("Tablero", "verdadero")
      @v4 = VerdaderoFalso.new("zzzzzzzzzz", "verdadero")
    end
      context "Test de clase Verdadero" do
	it 'Comprobando que hereda correctamente del padre' do
	  expect(@v).to respond_to(:enunciado)
	end
	it 'Comprobando la clase verdadero falso' do
	  expect(@v).to respond_to(:respuesta)
	end
	it 'Comprobando la clase verdadero falso' do
	  @v.respuesta.should == "verdadero"
	end
	it 'Comprobando la clase verdadero falso' do
	  @v.imprimir_respuestas.should == "Verdadero \nFalso \n"
	end
	it 'Comprobando que la clase verdadero y falso ha heredado de PreguntaGlobal' do
	    VerdaderoFalso.ancestors.include?(PreguntaGlobal) == true
	end
	it 'Comprobando que la clase verdadero y falso no es una PreguntaGlobal' do
	    VerdaderoFalso.is_a?(PreguntaGlobal) == false
	end
      end
      
       context "Test de clase Verdadero. Práctica 08" do
	it 'Comprobando que una pregunta es menor que otra' do
	 expect(@v2 < @v).to eq(true)
	 expect(@v < @v2).to eq(false)
	end
	it 'Comprobando que una pregunta es mayor que otra' do
	 expect(@v > @v2).to eq(true)
	 expect(@v2 > @v).to eq(false)
	end
	it 'Comprobando que una pregunta es igual que otra' do
	 expect(@v1 == @v).to eq(true)
	end
	it 'Comprobando que una pregunta es igual que otra' do
	 expect(@v2 <= @v).to eq(true)
	end
	it 'Comprobando que una pregunta es mayor que otra' do
	 expect(@v >= @v2).to eq(true)
	end
	it 'Comprobando que una pregunta es mayor que otra' do
		puts "sfgsfgsfgsfgsfgsfgsfsfdgsfgsfg"
	 expect((@v4.between?(@v3, @v2))).to eq(true)
	 expect((@v3.between?(@v4, @v2))).to eq(false)
	end
      end
   end
end 