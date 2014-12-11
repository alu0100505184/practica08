#encoding: utf-8
require "pract05/version"

module Pract05

    class Quiz
        attr_accessor :name, :question
    
        def initialize(name, &block)
            self.name = name
            self.questions = []
            
            #@contador = 0
            instance_eval &block
        end
        
        def to_s
            out = <<"EOQUIZ"
#{self.name}

#{self.respuestas.join("\n")}
EOQUIZ
        end
        
    
        def question (enunciado, respuestas)
            p = Question.new(enunciado, respuestas)
            questions << p 
            puts p if $DEBUG
            @cont = 0
        end
     
        def title(title)
            @name = title
        end
    
        def get_p(n)
            return questions[n]
        
        end
    end
end 