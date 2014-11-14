require "pract05/version"

module Pract05
  # Your code goes here...
  class PreguntaGlobal
    attr_accessor :enunciado
    
    def initialize(enunciado)
         @enunciado=enunciado
    end 
    
     def imprimir_enunciado()
	puts "\nPregunta de examen"
        puts @enunciado  
    end
    
    def to_s()
      @enunciado
    end
    
    
  end
end 