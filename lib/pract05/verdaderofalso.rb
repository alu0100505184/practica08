require "pract05/version"

module Pract05
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == VerdaderoFalso
  #
  # Con esta clase pretendemos:
  # - Creación de preguntas que son del tipo verdadero falso
  #
  # === Clase VerdaderoFalso
  #
  # Definición de la clase VerdaderoFalso:
  # * metodo initialize
  # * metodo imprimir_respuesta_correcta
  # * metodo imprimir_respuestas
  # * metodo imprimir_pregunta
  # * metodo to_s
  # * metodo <=>
  # ==== Attributes
  #
  # * +respuesta+ - Contiene la respuesta
  # * +correcta+ - Respuesta correcta
  
  class VerdaderoFalso<PreguntaGlobal
    include Comparable
    # Creado acceso de [Lectura/Escritura]
    attr_accessor :respuesta, :correcta
    
    # Método constructor de la clase VerdaderoFalso
    def initialize(enuciado,respuesta)
	 super(enuciado)
         @respuesta=respuesta 
	 @correcta=respuesta 
    end
    
    # Método para mostrar por pantalla las respuestas correctas
    def imprimir_respuesta_correcta()
	puts "\nPregunta de examen"
        puts @respuesta
    end
    
    # Método mostrar las respuestas
    def imprimir_respuestas()
        "Verdadero \nFalso \n"
    end
    
    # Método para mostrar por pantalla la preguntas con sus posibles respuestas
    def imprimir_pregunta()
      puts @enunciado
      "Verdadero \nFalso \n"
    end
    
    # Método para convertir la variable es un string
    def to_s()
        return options2 = @enunciado+ "\nVerdadero \nFalso \n"
    end
    
    # Método para poder utilizar el modulo comparable
    def <=>(anOther)
      enunciado.size <=> anOther.enunciado.size
    end
    
  end
end