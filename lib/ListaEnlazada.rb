require "pract05/version"

module Pract05
  class ListaEnlazada
    attr_accessor :top, :tail
    
    def initialize (nodes)
		@top = Nodo.new(nodes[0],nil)
		@tail = Nodo.new(nodes[1],nil)
		@top.next = @tail
	        if (nodes.length >= 2)
		  (0..nodes.length-1).each do |i|
		    @tail.next = Nodo.new(nodes[i],nil)
		    @tail = @tail.next
		  end
		end
	end
    
    def push(value)
      if value.is_a? Array then
	(0..value.length).each do |i|
	  @tail.next = Nodo.new(value[i],nil)
	  @tail =  @tail.next
	end
      else
	@tail.next = Nodo.new(value,nil)
	@tail =  @tail.next
      end
      return true
    end
    
    def pop
	aux = @top.value
	if (@top.next != nil) then
	  @top = @top.next
	end
	return aux
      end
  end
end