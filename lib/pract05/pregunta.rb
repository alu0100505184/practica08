require "pract05/version"

module Pract05
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == PreguntaGlobal
  #
  # Con esta clase pretendemos:
  # - Crear una estructura para almacenar información
  # - Creación de punteros a otros conjuntos de información
  #
  # === Clase PreguntaGlobal
  #
  # Definición de la clase PreguntaGlobal:
  # * metodo initialize
  # * metodo imprimir_enunciado
  # * metodo to_s  
  # ==== Attributes
  #
  # * +enunciado+ - Contiene la pregunta
  
  
  class PreguntaGlobal
    # Creado acceso de [Lectura/Escritura]
    attr_accessor :enunciado
    
    # Método constructor de la clase PreguntaGlobal
    def initialize(enunciado)
         @enunciado=enunciado
    end 
    
     # Método para mostrar por consola un enunciado
     def imprimir_enunciado()
	puts "\nPregunta de examen"
        puts @enunciado  
    end
  
    # Método para convertir la variable es un string
    def to_s()
      @enunciado
    end
    
    
  end
end 