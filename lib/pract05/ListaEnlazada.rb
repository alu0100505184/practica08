require "pract05/version"

module Pract05
	class ListaEnlazada
		include Enumerable
	    attr_accessor :top, :tail
	    
	    def initialize (nodes)
	    	@top = Nodo.new(nodes[0],nil,nil)
			@tail = Nodo.new(nodes[1],nil,@top)
			@top.next = @tail
			if (nodes.length > 2)
				(2..nodes.length-1).each do |i|
					@tail.next = Nodo.new(nodes[i],nil,@tail)
					@tail = @tail.next
				end
			end
		end
    
	    def push(value)
	    	if value.is_a? Array then
	    		(0..value.length-1).each do |i|
	    			@tail.next = Nodo.new(value[i],nil,@tail)
	    			@tail =  @tail.next
	    	end
	    	else
	    		@tail.next = Nodo.new(value,nil,@tail)
	    		@tail =  @tail.next
	    	end
	    	return true
	    end
    
	    def pushIni(value)
	    	if value.is_a? Array then
	    		(0..value.length-1).each do |i|
	    			@top.ant = Nodo.new(value[i],@top,nil)
	    			@top = @top.ant
	    	end
	    
	    	else (@top != nil)
	    		@top.ant = Nodo.new(value,@top,nil)
	    		@top = @top.ant
	    	end
	    	return true
	    end
    
	    def pop
	    	aux = @top.value
	    	if (@top.next != nil) then
	    		@top = @top.next
	    		@top.ant = nil
	    	end
	    	return aux
	    end
    
	    def popFin
	    	aux = @tail.value
	    	if (@tail.ant != nil) then
	    		@tail = @tail.ant
	    		@tail.next = nil
	    	end
	    	return aux
	    end
	    
	    def borrarLista()
	    	aux = @top
	    	while (@top.next != nil)
	    		@top = @top.next
	    		@top.ant = nil
	    	end
	    	#@top = nil
	    end
	   	
	    def borrar(index)
	    	x = @top
	    	a = 0
	    	while (x !=nil) && (a != index)
	    		if (a == index) then
	    			x.ant.next = x.next
	    			x.next.ant = x.ant
	    			return x
	    		end
	    		a = a + 1
	    		x = x.next
	    	end
	    end
	    
	    def second_ant
	    	aux = @top.next.ant
	    end
      
	    def each
	    	x = @top
	    	while (x !=nil)
	    		yield x
	    		x = x.next
	    	end
	    end
      
	    def [](index)
	    	x = @top
	    	a = 0
	    	while (x !=nil) && (a <= index)
	    		if (a == index) then
	    			return x
	    		end
	    		a = a + 1
	    		x = x.next
	    	end
	    end
      
	    def length
	    	x = @top
	    	a = 0
	    	while (x !=nil)
	    		a = a + 1
	    		x = x.next
	    	end
	    	return a
	    end
	      
	    alias size length
	    
	    def invertirLista(lista, aux)
      		lista.map {|x| aux.pushIni(x.value) }
      		aux.popFin
      		return aux
    	end
    end
end