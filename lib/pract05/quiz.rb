#encoding: utf-8
require "pract05/version"
require "pract05/question"

module Pract05

    class Quiz
        RIGHT = :right
        WRONG = :wrong
        
        attr_accessor :name, :questions
    
        def initialize(name = "", &block)
            self.name = name
            self.questions = []
            
            @cont = 0
            instance_eval &block
        end
        
        def to_s
            out = <<"EOQUIZ"
#{self.name}

#{self.respuestas.join("\n")}
EOQUIZ
        end
        
    
        def question (enunciado, respuestas)
            quest = Question.new(enunciado, respuestas)
            questions << quest 
            puts quest if $DEBUG
            @cont = 0
        end
     
        def title(title)
            @name = title
        end
        
        def wrong
            @cont += 1
            [@cont, WRONG]
        end
        
        def right
            @cont += 1
            [@cont, RIGHT]
        end
    
         def run
            cont=0
            puts self.name+"\n\n"
            self.questions.each { |quiz| cont += 1 if quiz.answer }
            puts "#{cont} preguntas correctas, de: #{@questions.size} preguntas."
        end

        def get_q(n)
            return questions[n]
        
        end
    end
end 