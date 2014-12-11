require "pract05/version"
require "pract05/Nodo"
require "pract05/pregunta"
require "pract05/verdaderofalso"
require "pract05/ListaEnlazada"
require "pract05/quiz"
require "pract05/question"
require "pract05/answer"

module Pract05             
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == PreguntaSimple
  #
  # Con esta clase pretendemos:
  # - Creación de preguntas que únicamente tienen una respuesta
  #
  # === Clase PreguntaSimple
  #
  # Definición de la clase VerdaderoFalso:
  # * metodo initialize
  # * metodo imprimir_pregunta
  # * metodo imprimir_enunciado
  # * metodo imprimir_respuestas
  # * metodo imprimir_respuestas_correctas
  # * metodo to_array
  # * metodo to_s
  # ==== Attributes
  #
  # * +enunciado+ - Contiene la pregunta
  # * +correcta+ - Pregunta correcta
  # * +distraccion+ - Preguntas incorrectas para engañar al usuario
  
  class PreguntaSimple<PreguntaGlobal 
    # Creado acceso de [Lectura/Escritura]
    attr_accessor :enunciado, :correcta, :distraccion
    
    # Método constructor de la clase examen
    def initialize(enunciado, correcta, distraccion)
      super(enunciado)
      @correcta, @distraccion=correcta, distraccion
    end
    
    # Método para mostrar por pantalla las preguntas con sus respuestas. Las repuestas se generan de forma aleatoria
    def imprimir_pregunta()
        puts @enunciado
	options = [@correcta] + @distraccion
	options = options.shuffle
	puts options
    end
    
    # Método para mostrar por pantalla los enunciados de las preguntas
    def imprimir_enunciado()
	puts "\nPregunta de examen"
        puts @enunciado
    end
    
    # Método para mostrar por pantalla las respuestas
    def imprimir_respuestas()
	puts "\nRespuestas:"
	options = [@correcta] + @distraccion
        puts options
    end
    
    # Método para mostrar por pantalla las respuestas correctas
    def imprimir_respuestas_correctas()
	puts "\nRespuestas correctas:"
	options = [@correcta]
        puts options
    end
    
    # Método para devolver un array con las preguntas y sus respuestas
    def to_array()
        options = [@enunciado, @correcta] + @distraccion
	options.each do |respuesta|
	puts "#{respuesta}"
      end
    end
    
    # Método para convertir la variable es un string
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
