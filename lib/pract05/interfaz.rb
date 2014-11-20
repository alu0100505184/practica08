require "pract05/version"
module Pract05 
  class Interfaz
    attr_accessor :examen
    def initialize(exmn)
      @examen = exmn
    end
    
    def resolver_exmn()
      npreguntas=4
      preg_actual=0
      preg_correctas=0
      while preg_actual<(npreguntas-1)
	preg_actual = preg_actual + 1
	puts @examen.imprimir_pregunta(preg_actual)
	puts "la solución: " +  @examen.preguntas[preg_actual].value.correcta
	STDOUT.flush
	respuesta = gets.chomp
	puts "Su respuesta es: " + respuesta
      
	if (respuesta == @examen.preguntas[preg_actual].value.correcta)
	  puts "su respuesta es cojonuda"
	end
      end
    end
 
  end
end