module Pract05
  # Your code goes here...
  class VerdaderoFalso::PreguntaGlobal
    attr_accessor :respuesta
    
    def initialize(texto)
         @respuesta=respuesta
    end
    
    def imprimir_respuesta()
	puts "\nPregunta de examen"
        puts @respuesta
    end
  end
end