require 'pract05'
module Pract05 
  describe "Pregunta" do
    before :each do
      @p1=PreguntaSimple.new("Seleccione cuanto vale. 2 + 4",6,[7,2,3])
      puts @p1.enunciado.class
    end

    context "PreguntaSimples" do
      describe "PreguntaSimple1" do
	it "tenemos una pregunta" do
	  @p1.enunciado.should == "Seleccione cuanto vale. 2 + 4"
	  expect(@p1.correcta).to eq(6)
	  @p1.distraccion.should == [7,2,3]
	  #@p1.enunciado.should eq("2+2")
	end
	it "Deben existir tres componentes" do
	  expect{Pract05::PreguntaSimple.new(:enunciado =>'5*8 = ?')}.to raise_error(ArgumentError)
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
  
  describe "Preguntas de examen" do
    context "Test de preguntas de examen" do
      before :each do
	@p1 = Pract05::PreguntaSimple.new("¿Cuál es la salida del siguiente código de Ruby? \nclass Xyz\n  def pots\n    @nice\n  end\nend\n\nxyz = Xyz.new\np xyz.pots\n","nil",["#<Xyz:0xa000208","0","Ninguna de las anteriores"]) 
	@p2 = Pract05::PreguntaSimple.new("La siguiente definición de un hash en Ruby es válida: \nhash_raro = {\n  [1, 2, 3] => Object.new(),\n  hash.new => :toto\n}", "Cierto", ["Falso"]);
	@p3 = Pract05::PreguntaSimple.new('Cuál es la salida del siguiente código Ruby?\nclass Array\n  def say_hi\n    "HEY!"\n  end\nend\n\np [1, "bob"].say_hi', "HEY!", ["1", "bob", "Ninguna de las anteriores"]);
	@p4 = Pract05::PreguntaSimple.new("¿Cuál es el tipo del objeto en el siguiente código en Ruby?\nclass Objeto\nend", "Ninguna de las anteriores", ["Una instancia de la clase", "Una constante", "Un objeto"]);
	@p5 = Pract05::PreguntaSimple.new("Es apropiado que una clase Tablero herede de una clase Juego", "Cierto", ["Falso"]);
      @lista = ListaEnlazada.new([@p1,@p2,@p3,@p4,@p5])
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
      
      it 'Comprobando que la clase pregunta simple ha heredado de PreguntaGlobal' do
	   PreguntaSimple.ancestors.include?(PreguntaGlobal) == true
      end
      it 'Comprobando que la clase pregunta simple no es una PreguntaGlobal' do
	   PreguntaSimple.is_a?(PreguntaGlobal) == false
      end
    end
  end

end