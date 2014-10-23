require "pract05/version"

module Pract05
  # Your code goes here...
  class Pregunta
    attr_accessor :texto, :correcta, :distraccion
    attr_reader :texto, :correcta, :distraccion
    
    def initialize(texto, correcta, distraccion)
         @texto, @correcta, @distraccion=texto, correcta, distraccion
    end
    
    #Preguntas con respuestas aleatorias
    def imprimir_pregunta()
	puts "Pregunta de examen"
        puts @texto
	options = [@correcta] + @distraccion
	options = options.shuffle
	puts options
    end
  end
end