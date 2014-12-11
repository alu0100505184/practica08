#encoding: utf-8
require 'pract05'
require 'pract05/examen.rb'
require 'pract05/interfaz.rb'
module Pract05
   describe "Clase exmn" do
      before :each do
      	@p1 = VerdaderoFalso.new("¿Es apropiado que una clase Tablero herede de una clase Juego?", "verdadero") 
      	@p2 = VerdaderoFalso.new("A?", "verdadero")
      	@p3 = PreguntaSimple.new("¿Cuanto es 2+2?", "4", ["2"+"3"+"5"]);
      	@p4 = PreguntaSimple.new("¿Cual es el valor de 6*6?", "36", ["25"+"35"+"55"]);
      	@lista = ListaEnlazada.new([@p1, @p2,@p3,@p4])
      	@lista_ordenada = ListaEnlazada.new([@p2, @p4,@p3,@p1])
      	@titulo = "Examen de LPP"
      	@examen = Pract05::Examen.new(@titulo, @lista)
      	@interfaz = Pract05::Interfaz.new(@examen)
      	@respuestas = ListaEnlazada.new(["verdadero", "falso", "3", "36"])
      	@preg_actual = -1
      	@npreguntas = 3
      	@examen2 = Pract05::Examen.new(@titulo, @lista_ordenada)
      	@lista_vacia = ListaEnlazada.new([])
      	@lista_vacia.borrarLista
      	@lista_invertida = ListaEnlazada.new([@p1, @p3,@p4,@p2])
      end
      
      context "Test de clase Examen" do
      	it "Debe existir una clase examen" do
      		expect(@examen).instance_of?(Examen)
      	end
      	it "Debe tener un nombre" do
      		expect(@examen.titulo_examen).to eq("Examen de LPP")
      	end
      	it "Hay preguntas insertadas" do
      		expect(@examen.preguntas.size).to eq(4)
      	end
      	it "Calcular nota" do
      		expect(@interfaz.nota(@respuestas)).to eq(5)
      	end
      	it "Añadir una pregunta al examen" do
      		@p5 = PreguntaSimple.new("¿Cuanto es 3*3?", "9", ["5"+"10"+"20"])
      		expect(@examen.preguntas.push([@p4])).to eq(true)
      		expect(@examen.preguntas.size).to eq(5)
      		@respuestas.push(["9"]);
      	end
      	it "Imprimir ordenado" do
      		expect(@examen.comparar_exmn(@lista_ordenada)).to eq(false)
      		@examen.ordenar_por_enunciado()
      		expect(@examen.comparar_exmn(@lista_ordenada)).to eq(true)
      	end
      end
      
      context "Test práctica 10" do
      	it "Se debe poder invertir el orden del examen" do
      		expect(@examen2.comparar_exmn(@lista_invertida)).to eq(false)
      		@examen2.invertirExamen(@lista_vacia)
      		expect(@examen2.comparar_exmn(@lista_invertida)).to eq(true)
      	end
      end
   end
end
   