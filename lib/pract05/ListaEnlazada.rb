require "pract05/version"

module Pract05
  # = Practica 10
  #
  # Autor::   Bianney Cabrera y David Rodríguez
  # Web::     https://github.com/alu0100505184/practica08
  #
  # == Lista Enlazada
  #
  # Con esta clase pretendemos:
  # - Crear una lista doblemente enlazada
  # - Tendrá elementos de la clase Nodos
  #
  # === Clase ListaEnlazada
  #
  # Definición de la clase ListaEnlazada:
  # * metodo initialize
  # * metodo push
  # * metodo pushIni
  # * metodo popFin
  # * metodo pop
  # * metodo borrarLista
  # * metodosecond_ant
  # * metodo each
  # * metodo []
  # * metodo length // alias size length
  # * metodo invertirLista
  # ==== Attributes
  #
  # * +top+ - Contiene el primer elemento de la lista
  # * +tail+ - Contiene el último elemento de la lista
  
  
	class ListaEnlazada
		include Enumerable
	    # Creado acceso de [Lectura/Escritura]
	    attr_accessor :top, :tail
	    
	    # Método constructor de la clase ListaEnlazada, como argumento se le pasa un conjunto de nodos
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
    
	    # Método para insertar elementos por el final de la lista
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
    
	    # Método para insertar elementos por el principio de la lista
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
    
	    # Método para extraer elementos por el principio de la lista
	    def pop
	    	aux = @top.value
	    	if (@top.next != nil) then
	    		@top = @top.next
	    		@top.ant = nil
	    	end
	    	return aux
	    end
    
	    # Método para extraer elementos por el final de la lista
	    def popFin
	    	aux = @tail.value
	    	if (@tail.ant != nil) then
	    		@tail = @tail.ant
	    		@tail.next = nil
	    	end
	    	return aux
	    end
	    
	    # Método para borrar la lista completa
	    def borrarLista()
	    	aux = @top
	    	while (@top.next != nil)
	    		@top = @top.next
	    		@top.ant = nil
	    	end
	    	#@top = nil
	    end
	   
	   # Método para borrar elementos de la lista
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
	    
	    # Método para extraer el primer elemento de la lista. Dicha extracción se hace a través del puntero que tiene el segundo elemento
	    def second_ant
	    	aux = @top.next.ant
	    end
      
	    # Método para poder utilizar el modulo Include. Recorreremos toda la lista
	    def each
	    	x = @top
	    	while (x !=nil)
	    		yield x
	    		x = x.next
	    	end
	    end
	    
	    # Método para obtener un elemento de la lista
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
      
	    # Método para obtener la longitud de la lista
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
	    
	    # Método que invierte los elementos de la lista
	    def invertirLista(lista, aux)
      		lista.map {|x| aux.pushIni(x.value) }
      		aux.popFin
      		return aux
    	end
    end
end