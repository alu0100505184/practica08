require "pract05/version"
require "pract05/Nodo"
require "pract05/pregunta"
require "pract05/verdaderofalso"
require "pract05/ListaEnlazada"

module Pract05             
  # Your code goes here...
  class PreguntaSimple<PreguntaGlobal 
    attr_accessor :enunciado, :correcta, :distraccion
    attr_reader :enunciado, :correcta, :distraccion
    
    def initialize(enunciado, correcta, distraccion)
      super(enunciado)
      @correcta, @distraccion=correcta, distraccion
    end
    #Preguntas con respuestas aleatorias 
    def imprimir_pregunta()
	puts "Pregunta de examen"
        puts @enunciado
	options = [@correcta] + @distraccion
	options = options.shuffle
	puts options
    end
    
    def imprimir_enunciado()
	puts "\nPregunta de examen"
        puts @enunciado
    end
    
    def imprimir_respuestas()
	puts "\nRespuestas:"
	options = [@correcta] + @distraccion
        puts options
    end
    
    def imprimir_respuestas_correctas()
	puts "\nRespuestas correctas:"
	options = [@correcta]
        puts options
    end
    
    def to_array()
        options = [@enunciado, @correcta] + @distraccion
	options.each do |respuesta|
	puts "#{respuesta}"
      end
    end
    
    def to_s()
        options2 = [@enunciado, @correcta] + @distraccion
	options = ""
	options2.each do |respuesta|
	 options += "#{respuesta}\n"
	end
	return options
    end
  end
end