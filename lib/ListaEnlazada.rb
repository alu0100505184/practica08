require "pract05/version"

module Pract05
  class ListaEnlazada
    attr_accessor :top, :tail
    
    def initialize (nodes)
		@top = Nodo.new(nodes[0],nil)
		aux = Nodo.new(nodes[1],nil)
		@tail = aux
		@top.next = @tail
	        if (nodes.length >= 2)
		  (0..nodes.length-1).each do |i|
		    aux.next = Nodo.new(nodes[i],nil)
		    @tail = aux.next
		    puts @tail.value
		  end
		end
	end
    
   
=begin
	def push (newNode, *args)
      raise ArgumentError, "Los elementos tienen que ser del mismo tipo que top" unless newNode.is_a? @top.class
      @tail.next = newNode
      @tail = newNode
      @size += 1
      args.each {|x| push(x)}
    end
=end
    
    def push (value)
      aux = Nodo.new(value,nil)
      @tail = aux
      @tail.ant.next = @tail
      return true
    end
    
    def push_array(array)
      (0..array.length).each do |i|
      aux = Nodo.new(array[i],nil)
      @tail = aux
      @tail.ant.next = @tail
      end
      return true
    end
    
    def pop
	aux = @top.value
	@top = @top.next
	if (@top != nil) then
	  @top.ant = nil
	end
	return aux
      end
  end
end