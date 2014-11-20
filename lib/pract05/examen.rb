require "pract05/version"

module Pract05 
  # Your code goes here...
  class Examen
    attr_accessor :titulo_examen, :preguntas
    def initialize(titulo_examenn,preguntass)
         @titulo_examen, @preguntas=titulo_examenn, preguntass
    end
    
    def imprimir_examen()
      puts @titulo_examen
      (0..(@preguntas.size-1)).each { |i| puts "l[#{i}] = '#{@preguntas[i].value}'"}
    end
    
    def imprimir_pregunta(index)
      @preguntas[index].value
    end
    
    def ordenar_por_enunciado()
      @preguntas = @preguntas.sort_by{|x| x.value.enunciado }
    end
    
  end
end