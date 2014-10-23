require "pract05/version"

module Pract05
  # Your code goes here...
  class Pregunta
  attr_reader :texto, :correcta, :distraccion
  
    def initialize(texto, correcta, distraccion)
         @texto, @correcta, @distraccion  = texto, correcta, distraccion     
    end
  end
end
