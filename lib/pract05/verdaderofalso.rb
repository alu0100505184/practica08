require "pract05/version"

module Pract05
  # Your code goes here...
  class VerdaderoFalso<PreguntaGlobal
    include Comparable
    attr_accessor :respuesta, :correcta
    
    def initialize(enuciado,respuesta)
	 super(enuciado)
         @respuesta=respuesta 
	 @correcta=respuesta 
    end
    
    def imprimir_respuesta_correcta()
	puts "\nPregunta de examen"
        puts @respuesta
    end
    
    def imprimir_respuestas()
        "Verdadero \nFalso \n"
    end
    
    def imprimir_pregunta()
      puts @enunciado
      "Verdadero \nFalso \n"
    end
    
    def to_s()
        return options2 = @enunciado+ "\nVerdadero \nFalso \n"
    end
    
    def <=>(anOther)
      enunciado.size <=> anOther.enunciado.size
    end
    
  end
end