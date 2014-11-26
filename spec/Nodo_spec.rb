require 'pract05'
module Pract05
    describe "Examen" do
        before :each do
            @q = PreguntaSimple.new("Seleccione cuanto vale. 2 + 4",6, [7,2,3])
            @n = Nodo.new(@q, nil,nil)
            @lista = Pract05::ListaEnlazada.new([3,5])
        end
    
        context "Test de clase Nodo" do
            it 'Comprobando la clase nodo' do
	            expect(@n).to respond_to(:value)
	            expect(@n).to respond_to(:next)
	            expect(@n).to respond_to(:ant)
            end
            it 'Valores de la clase nodo' do
            	expect(@n.value).to eq(@q)
            	expect(@n.next).to eq(nil)
            end
        end
    end
end