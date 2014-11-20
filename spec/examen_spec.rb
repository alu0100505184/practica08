#encoding: utf-8
require 'pract05'
require 'pract05/examen.rb'
require 'pract05/interfaz.rb'
module Pract05
   describe "Clase exmn" do
    before :each do
	@v = VerdaderoFalso.new("Esto es ruby?", "verdadero")
	@vyuh = VerdaderoFalso.new("A?", "verdadero")
	@p5 = Pract05::PreguntaSimple.new("Es apropiado que una clase Tablero herede de una clase Juego", "Si coño", ["Falso" + "No"]);
	@lista = ListaEnlazada.new([@p5, @v,@vyuh,@p5])
	@titulo = "Examen de LPP"
	@examen = Pract05::Examen.new(@titulo, @lista)
	@interfaz = Pract05::Interfaz.new(@examen)
	@preg_actual = -1
	@npreguntas = 4
      end
   context "Test de clase Examen" do
	  it 'Comprobando la clase exmn y respuesta' do
	    @examen.ordenar_por_enunciado()
	    @examen.imprimir_examen()
	    @interfaz.resolver_exmn()
	  end
    end
  end
end