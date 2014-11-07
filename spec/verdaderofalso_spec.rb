require 'pract05'
module Pract05
    
   describe "Verdadero y falso" do
    before :each do
      @v = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego.", "verdadero")
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
    end
   end
end