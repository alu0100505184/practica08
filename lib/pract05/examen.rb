require "pract05/version"

module Pract05 
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == Examen
  #
  # Con esta clase pretendemos:
  # - Crear una clase para la generación de examenes
  # - Comparar examenes
  # - Generación de examenes con las preguntas invertidas
  # - Ordenar las preguntas del examen según su enunciado
  #
  # === Clase examen
  #
  # Definición de la clase Examen:
  # * metodo initialize
  # * metodo imprimir_examen
  # * metodo imprimir_pregunta
  # * metodo ordenar_por_enunciado
  # * metodo comparar_exmn 
  # * metodo invertirExamen
  # ==== Attributes
  #
  # * +titulo_examen+ - Contiene el titulo del examen
  # * +preguntas+ - Contiene las preguntas del examen
  
  class Examen < ListaEnlazada
    include Comparable
    # Creado acceso de [Lectura/Escritura]
    attr_accessor :titulo_examen, :preguntas
    
    # Método constructor de la clase examen
    def initialize(titulo_examenn,preguntass)
      @titulo_examen, @preguntas = titulo_examenn, preguntass
    end
    
    # Impresión por pantalla de un examen
    def imprimir_examen()
      puts @titulo_examen
      (0..(@preguntas.size-1)).each { |i| puts "p[#{i}] = '#{@preguntas[i].value}'"}
    end
    
    # Impresión por pantalla de las preguntas que componen el examen
    def imprimir_pregunta(index)
      @preguntas[index].value
    end
    
    # Ordenación del examen según el enunciado de las preguntas
    def ordenar_por_enunciado()
      @preguntas = @preguntas.sort_by{|x| x.value.enunciado }
    end
    
    # Método para comparar examenes y devolver un boleano con el resultado
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
    
    # Método para invertir las preguntas que componen el examen
    def invertirExamen(aux)
      @preguntas = invertirLista(@preguntas, aux)
    end
  end
end