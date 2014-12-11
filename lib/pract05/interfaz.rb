require "pract05/version"
module Pract05 
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == Interfaz
  #
  # Con esta clase pretendemos:
  # - Proveer una interfaz para la resolución de examenes
  # - Que el usuario obtenga la nota del examen que ha realizado
  #
  # === Clase interfaz
  #
  # Definición de la clase Interfaz:
  # * metodo initialize
  # * metodo resolver_examen
  # * metodo nota
  # ==== Attributes
  #
  # * +examen+ - Contiene el examen que se le mostará al usuario
  # * +nota+ - Valor que ha obtenido el usuario al realizar el examen

  class Interfaz
    # Creado acceso de [Lectura/Escritura]
    attr_accessor :examen, :nota
    # Método constructor de la clase intefaz, como argumento se le pasa un examen
    def initialize(exmn)
      @examen = exmn
      @nota = 0
      @preg_correctas = 0
    end
    
=begin    def resolver_exmn()
      npreguntas = @respuestas.lenght
      preg_actual = -1
      preg_correctas = 0
      while preg_actual < (npreguntas-1)
	preg_actual = preg_actual + 1
	puts @examen.imprimir_pregunta(preg_actual)
	puts "la solución: " +  @examen.preguntas[preg_actual].value.correcta
	STDOUT.flush
	respuesta[preg_actual] = gets.chomp
	puts "Su respuesta es: " + respuesta[preg_actual]
	if (respuesta == @examen.preguntas[preg_actual].value.correcta)
	  puts "su respuesta es correcta"
	  preg_correctas = preg_correctas + 1;
	end
      end
    end
=end
    
    # Método para la resolución de examenes
    def resolver_examen(respuestas)
      npreguntas = respuestas.size
      preg_actual = 0
      @preg_correctas = 0
      while (preg_actual < npreguntas) do
	if (respuestas[preg_actual].value == @examen.preguntas[preg_actual].value.correcta)
	  @preg_correctas = @preg_correctas + 1
	end
	preg_actual = preg_actual + 1
      end
    end
    
    # Obtención de la nota según las respuestas del usuario
    def nota(respuestas)
      self.resolver_examen(respuestas)
      return @nota = (@preg_correctas.to_f / respuestas.size) * 10
    end
  end
end