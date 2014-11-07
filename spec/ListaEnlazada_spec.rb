require 'pract05'
module Pract05
   describe "ListaEnlazada practica 6" do
  context "Test de clase ListaEnlazada" do
    before :each do
      @lista = ListaEnlazada.new([2,1,9])
    end
      it 'Comprobando la clase ListaEnlazada' do
	expect(Pract05::ListaEnlazada).to respond_to(:new)
	expect(@lista).to respond_to(:top)
      end
      
      it 'Extraer elementos de la lista' do
	@lista.pop.should eq(2)
	@lista.pop.should eq(1)
      end
      
      it 'Comprobación de extracción cuando la lista está vacía' do
	@lista.pop
	@lista.pop
	@lista.pop
	@lista.pop
	@lista.pop
	@lista.pop
	@lista.pop
	@lista.pop
      end
      
      it 'Comprobando la clase ListaEnlazada. Insertando elemento' do
	@lista.push(8).should eq(true)
      end
      
      it "Inserción de varios elementos" do
	@lista.push([1,2,3]).should eq(true)
      end
      
      it "Consulta de cabeza " do
	@lista.top.value.should eq(2)
      end 
    end
   end
  
  
  #Test lista enlazada práctica 7
    describe "ListaEnlazada practica 7" do
   before :each do
      @lista = ListaEnlazada.new([2,1,9])
    end
      it 'Comprobando la clase ListaEnlazada' do
	expect(Pract05::ListaEnlazada).to respond_to(:new)
	expect(@lista).to respond_to(:top)
      end
      
      it 'Comprobar los anteriores' do
	@nodito = @lista.second_ant
	@nodito.value.should eq(2)
      end
      
      it 'Extraer elementos de la lista' do
	@lista.pop.should eq(2)
	@lista.pop.should eq(1)
      end
      
      it 'Comprobando la clase ListaEnlazada. Insertando elemento' do
	@lista.push(8).should eq(true)
      end
      
      it "Inserción de varios elementos" do
	@lista.push([1,2,3]).should eq(true)
      end
      
      it "Consulta de cabeza " do
	@lista.top.value.should eq(2)
      end 
   end
end