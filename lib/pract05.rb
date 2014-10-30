require "pract05/version"
require "Nodo"
require "ListaEnlazada"

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
    def to_array()
        options = [@texto, @correcta] + @distraccion
	options.each do |respuesta|
	puts "#{respuesta}"
      end
    end
    def to_s()
        options2 = [@texto, @correcta] + @distraccion
	options = ""
	options2.each do |respuesta|
	 options += "#{respuesta}\n"
	end
	return options
    end
  end
end