require "pract05/version"

module Pract05 
  # Your code goes here...
  class Examen < ListaEnlazada
    include Comparable
    attr_accessor :titulo_examen, :preguntas
    def initialize(titulo_examenn,preguntass)
      @titulo_examen, @preguntas = titulo_examenn, preguntass
    end
    
    def imprimir_examen()
      puts @titulo_examen
      (0..(@preguntas.size-1)).each { |i| puts "p[#{i}] = '#{@preguntas[i].value}'"}
    end
    
    def imprimir_pregunta(index)
      @preguntas[index].value
    end
 
    def ordenar_por_enunciado()
      @preguntas = @preguntas.sort_by{|x| x.value.enunciado }
    end
    
    def comparar_exmn(another_list)
      i = 0
      igual = true
      while (i < preguntas.size-1) do
        if (self.preguntas[i].value.enunciado != another_list[i].value.enunciado)
          return false
        end
        i = i + 1
      end
      return igual
    end
    
    def invertirExamen(aux)
      @preguntas = invertirLista(@preguntas, aux)
    end
  end
end