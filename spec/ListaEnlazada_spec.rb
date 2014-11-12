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
      @v = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego.", "verdadero")
      @lista = ListaEnlazada.new([2,1,9,@v])
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
   
    describe "ListaEnlazada practica 7" do
   before :each do
      @v = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego.", "verdadero")
      @lista = ListaEnlazada.new([3,1,5, @v])
    end
    context "Test de clase ListaEnlazada. Práctica 08" do
	it 'Comprobando el enumerable de la lista enlazada' do
	  @lista.each { |x| print x.value, "\n"}
	end
	it 'Comprobando el enumerable de la lista enlazada' do
	  (0..(@lista.size-1)).each { |i| puts "a[#{i}] = '#{@lista[i].value}'"}
	end
	
	it 'Comprobando el enumerable de la lista enlazada' do
	  @lista1 = @lista
	  (0..(@lista.size-1)).each { 
	    |i| puts "a[#{i}] = '#{
				    expect(@lista[i].value == @lista1[i].value).to eq(true)}'"}
	end
      end
      
       end
   
end