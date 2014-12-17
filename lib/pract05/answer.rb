#encoding: utf-8
require "pract05/version"

module Pract05
  class Answer
    attr_accessor :sol, :index, :answer
    
    def initialize(index, sol, answer)
      @sol = sol
      @index = index
      @answer = answer
    end
    
    def to_s
      "#{@index} - #{answer}"
    end
    
    def right?
      @sol == Quiz::RIGHT
    end
    
    def <=>(other)
      self.index <=> other.index
    end
  end
end