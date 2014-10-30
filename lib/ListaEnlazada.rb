require "pract05/version"

module Pract05
  class ListaEnlazada
    attr_reader :top, :size
    
    def initialize (top2)
      @top = top2
      @tail = top2
      @size = 1
    end
    
    def push (newNode, *args)
      raise ArgumentError, "Los elementos tienen que ser del mismo tipo que top" unless newNode.is_a? @top.class
      @tail.next = newNode
      @tail = newNode
      @size += 1
      args.each {|x| push(x)}
    end
  end
end