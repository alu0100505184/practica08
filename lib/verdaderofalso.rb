require "pract05/version"

module Pract05
  # Your code goes here...
  class VerdaderoFalso<PreguntaGlobal
    include Comparable
    attr_accessor :respuesta
    
    def initialize(enuciado,respuesta)
	 super(enuciado)
         @respuesta=respuesta 
    end
    
    def imprimir_respuesta_correcta()
	puts "\nPregunta de examen"
        puts @respuesta
    end
    
    def imprimir_respuestas()
        "Verdadero \nFalso \n"
    end
    
    def <=>(anOther)
      enunciado.size <=> anOther.enunciado.size
    end
  end
end