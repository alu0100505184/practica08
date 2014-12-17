#encoding: utf-8
require "pract05/version"
require "pract05/answer"

module Pract05
  class Question
    INDEX = 0
    SOL = 1
    
    attr_accessor :enunciado, :respuestas
    
    def initialize(enunciado, respuestas)
      @enunciado = enunciado
      @respuestas = respuestas.map { |sol, text| Answer.new(sol[INDEX], sol[SOL], text) }.sort
    end
    
    def to_s
      out = <<"EOQUESTION"
#{@texto}
#{
    out = ""
    @respuestas.each do |answer|
    out << " #{answer}\n"
    end
    out
}
EOQUESTION
    end

    def respuesta
      begin
      puts self
      print "Opción:"
      i = gets.to_i - 1
      end while (i < 0 or i >= @respuestas.length)
      @respuestas[i].right?
    end
  end
end