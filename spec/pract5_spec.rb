require 'pract05'
module Pract05
  describe "Pregunta" do
    before :each do
      @p1=Pregunta.new("Seleccione cuanto vale. 2 + 4",6,[7,2,3])
      puts @p1.enunciado.class
    end

    context "Preguntas" do
      describe "Pregunta1" do
	it "tenemos una pregunta" do
	  @p1.enunciado.should == "Seleccione cuanto vale. 2 + 4"
	  @p1.correcta.should == 6
	  @p1.distraccion.should == [7,2,3]
	  #@p1.enunciado.should eq("2+2")
	end
	it "tenemos una respuesta correcta" do
	  expect(@p1.correcta).should == 6
	end
	it "Deben existir tres componentes" do
	  expect{Pract05::Pregunta.new(:enunciado =>'5*8 = ?')}.to raise_error(ArgumentError)
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
  
  describe "Preguntas de examen" do
    context "Test de preguntas de examen" do
      before :each do
	@p1 = Pract05::Pregunta.new("¿Cuál es la salida del siguiente código de Ruby? \nclass Xyz\n  def pots\n    @nice\n  end\nend\n\nxyz = Xyz.new\np xyz.pots\n","nil",["#<Xyz:0xa000208","0","Ninguna de las anteriores"]) 
	@p2 = Pract05::Pregunta.new("La siguiente definición de un hash en Ruby es válida: \nhash_raro = {\n  [1, 2, 3] => Object.new(),\n  hash.new => :toto\n}", "Cierto", ["Falso"]);
	@p3 = Pract05::Pregunta.new('Cuál es la salida del siguiente código Ruby?\nclass Array\n  def say_hi\n    "HEY!"\n  end\nend\n\np [1, "bob"].say_hi', "HEY!", ["1", "bob", "Ninguna de las anteriores"]);
	@p4 = Pract05::Pregunta.new("¿Cuál es el tipo del objeto en el siguiente código en Ruby?\nclass Objeto\nend", "Ninguna de las anteriores", ["Una instancia de la clase", "Una constante", "Un objeto"]);
	@p5 = Pract05::Pregunta.new("Es apropiado que una clase Tablero herede de una clase Juego", "Cierto", ["Falso"]);
      end
      
      #Primera pregunta
      describe "#Mostrar Pregunta 1" do
	it "Se muestra la pregunta correctamente" do
	  puts ("\nPREGUNTA 1º")
	  @p1.imprimir_pregunta()
	end
      end
      
      describe "#Mostrar Pregunta 1" do
	it "Se muestra el enunciado correctamente" do
	  @p1.imprimir_enunciado()
	end
      end
      
      describe "#Mostrar Respuestas 1" do
	it "Se muestran todas las respuestas correctamente" do
	  @p1.imprimir_respuestas()
	end
      end
      
      describe "#Mostrar Respuestas 1" do
	it "Se muestran únicamente las respuestas correctas" do
	  @p1.imprimir_respuestas_correctas()
	end
      end
      
      #Segunda Pregunta
      describe "#Mostrar Pregunta 2" do
	it "Se muestra la pregunta correctamente" do
	  puts ("\nPREGUNTA 2º")
	  @p2.imprimir_pregunta()
	end
      end
      
      describe "#Mostrar Pregunta 2" do
	it "Se muestra el enunciado correctamente" do
	  @p2.imprimir_enunciado()
	end
      end
      
      describe "#Mostrar Respuestas 2" do
	it "Se muestran todas las respuestas correctamente" do
	  @p2.imprimir_respuestas()
	end
      end
      
      describe "#Mostrar Respuestas 2" do
	it "Se muestran únicamente las respuestas correctas" do
	  @p2.imprimir_respuestas_correctas()
	end
      end
      
      #Tercera Pregunta
      describe "#Mostrar Pregunta 3" do
	it "Se muestra la pregunta correctamente" do
	  puts ("\nPREGUNTA 3º")
	  @p3.imprimir_pregunta()
	end
      end
      
      describe "#Mostrar Pregunta 3" do
	it "Se muestra el enunciado correctamente" do
	  @p3.imprimir_enunciado()
	end
      end
      
      describe "#Mostrar Respuestas 3" do
	it "Se muestran todas las respuestas correctamente" do
	  @p3.imprimir_respuestas()
	end
      end
      
      describe "#Mostrar Respuestas 3" do
	it "Se muestran únicamente las respuestas correctas" do
	  @p3.imprimir_respuestas_correctas()
	end
      end
      
      #Cuarta Pregunta
      describe "#Mostrar Pregunta 4" do
	it "Se muestra la pregunta correctamente" do
	  puts ("\nPREGUNTA 4º")
	  @p4.imprimir_pregunta()
	end
      end
      
      describe "#Mostrar Pregunta 4" do
	it "Se muestra el enunciado correctamente" do
	  @p4.imprimir_enunciado()
	end
      end
      
      describe "#Mostrar Respuestas 4" do
	it "Se muestran todas las respuestas correctamente" do
	  @p4.imprimir_respuestas()
	end
      end
      
      describe "#Mostrar Respuestas 4" do
	it "Se muestran únicamente las respuestas correctas" do
	  @p4.imprimir_respuestas_correctas()
	end
      end
      
      #Quinta Pregunta
      describe "#Mostrar Pregunta 5" do
	it "Se muestra la pregunta correctamente" do
	  puts ("\nPREGUNTA 5º")
	  @p5.imprimir_pregunta()
	end
      end
      
      describe "#Mostrar Pregunta 5" do
	it "Se muestra el enunciado correctamente" do
	  @p5.imprimir_enunciado()
	end
      end
      
      describe "#Mostrar Respuestas 5" do
	it "Se muestran todas las respuestas correctamente" do
	  @p5.imprimir_respuestas()
	end
      end
      
      describe "#Mostrar Respuestas 5" do
	it "Se muestran únicamente las respuestas correctas" do
	  @p5.imprimir_respuestas_correctas()
	end
      end
      
    end
  end

   describe "Pregunta Global" do
    before :each do
      @p = PreguntaGlobal.new("Seleccione cuanto vale. 2 + 4")
    end
    
    context "Test de clase Pregunta Global" do
      it 'Comprobando la clase pregunta global' do
	expect(@p).to respond_to(:enunciado)
      end
      it 'Comprobando la clase pregunta global.Imprime enunciado' do
	@p.to_s.should eq ("Seleccione cuanto vale. 2 + 4")
      end
    end
   end
   
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