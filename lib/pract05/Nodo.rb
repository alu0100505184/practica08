require "pract05/version"

module Pract05  
  Nodo = Struct.new(:value, :next, :ant) do
	attr_accessor :value, :next, :ant
	def initialize(valuee, nextt, antt)
         @value, @next, @ant=valuee, nextt, antt
    end 
  end 
end 