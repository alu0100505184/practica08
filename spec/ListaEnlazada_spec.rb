#encoding: utf-8
require 'pract05'
module Pract05
    describe "ListaEnlazada practica 6" do
        context "Test de clase ListaEnlazada" do
            before :each do
                @lista = ListaEnlazada.new([2,1,9])
            end
        
            it 'Comprobando la clase ListaEnlazada' do
                expect(ListaEnlazada).to respond_to(:new)
        	    expect(@lista).to respond_to(:top)
            end
              
            it 'Extraer elementos de la lista por el principio' do
        	    expect(@lista.pop).to eq(2)
        	end
        	
        	it 'Extraer elementos de la lista por el final' do
            	expect(@lista.popFin).to eq(9)
            end
              
            it 'Comprobando la clase ListaEnlazada. Insertando elemento' do
                expect(@lista.push(8)).to eq(true)
                expect(@lista.popFin).to eq(8)
            end
            
            it 'Insertar elementos por el principio' do
               expect(@lista.pushIni(5)).to eq(true)
               expect(@lista.pop).to eq(5)
            end
              
            it "Inserción de varios elementos" do
                expect(@lista.push([1,2,3])).to eq(true)
            end
              
            it "Consulta de cabeza " do
        	    expect(@lista.top.value).to eq(2)
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
            expect(@nodito.value).to eq(2)
        end
        it 'Extraer elementos de la lista' do
        	expect(@lista.pop).to eq(2)
        	expect(@lista.pop).to eq(1)
        end
        it 'Comprobando la clase ListaEnlazada. Insertando elemento' do
            expect(@lista.push(8)).to eq(true)
        end
        it "Inserción de varios elementos" do
            expect(@lista.push([1,2,3])).to eq(true)
        end
      
        it "Consulta de cabeza " do
	        expect(@lista.top.value).to eq(2)
        end 
    end
   
    describe "ListaEnlazada practica 8" do
        before :each do
            @v = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego.", "verdadero")
            @lista = ListaEnlazada.new([3,1,5, @v])
        end
        context "Test de clase ListaEnlazada. Práctica 08" do
            it 'Comprobando el enumerable de la lista enlazada' do
                @lista.each { |x| print x.value, "\n"}
            end
            it 'Comprobando el enumerable de la lista enlazada' do
                (0..(@lista.size-1)).each { |i| puts "l[#{i}] = '#{@lista[i].value}'"}
            end
            it 'Comprobando el enumerable de la lista enlazada' do
                @lista1 = @lista
                (0..(@lista.size-1)).each { 
                    |i| puts "l[#{i}] = '#{
				    expect(@lista[i] == @lista1[i]).to eq(true)}'"}
			end
	
        	it 'Comprobando el enumerable de la lista enlazada' do
        	    expect(@lista.count == @lista.size).to eq(true)
        	    expect(@lista.count != @lista.size).to eq(false)
        	end
            it 'Comprobando el enumerable de la lista enlazada' do
                puts "min:"
                @lista2 = ListaEnlazada.new(["dfgsfgsfgsfgsfgsfgsfgsf", "jjjjjjjjjjjjjjjjj","adadadfadfaadf aaaaaaa","adf"])
        	    expect(((@lista2.min_by{|x| x.value.length }).value) == "adf").to eq(true)
        	    expect(((@lista2.min_by{|x| x.value.length }).value) == "fff").to eq(false)
        	end
        	it 'Comprobando el enumerable de la lista enlazada' do
                puts "min:"
                @lista2 = ListaEnlazada.new(["dfgsff", "jjjjjjjjjjjjjjjjj","dfgsfgsfgsfgsfgsfgsfgsf","adf"])
	            expect(((@lista2.max_by{|x| x.value.length }).value) == "dfgsfgsfgsfgsfgsfgsfgsf").to eq(true)
	            expect(((@lista2.max_by{|x| x.value.length }).value) == "fff").to eq(false)
	        end
        end
    end
end