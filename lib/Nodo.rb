require "pract05/version"

module Pract05
  Nodo = Struct.new(:value, :next) do
	attr_accessor :value, :next
	def initialize(value, nextt)
         @value, @next, @ant=value, nextt, nil
    end
  end
end