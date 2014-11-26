require "pract05/version"

module Pract05 
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == Nodo
  #
  # Con esta clase pretendemos:
  # - Crear una estructura para almacenar información
  # - Creación de punteros a otros conjuntos de información
  #
  # === Clase Nodo
  #
  # Definición de la clase Nodo:
  # * metodo initialize  
  # ==== Attributes
  #
  # * +value+ - Contiene el valor del nodo
  # * +next+ - Contiene el nodo siguiente
  # * +ant+ - Contiene el nodo anterior
  
  
  Nodo = Struct.new(:value, :next, :ant) do
      # Creado acceso de [Lectura/Escritura]
	attr_accessor :value, :next, :ant
	
	# Método constructor de la clase Nodo, es necesario pasarle un valor, y dos punteros
	def initialize(valuee, nextt, antt)
         @value, @next, @ant=valuee, nextt, antt
    end 
  end 
end 