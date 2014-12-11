#encoding: utf-8
'pract05'
require 'pract05/quiz.rb'

module Pract05
    describe "Clase exmn" do
        before :all do
            @quiz= Quiz.new("Lenguajes y Paradigmas de la Programación"){
                question '¿Cuantos argumentos de tipo bloque puede recibir un metodo?',
                    right =>'1',
                    wrong =>'2',
                    wrong =>'Muchos',
                    wrong =>'Los que defina el usuario'
                    
                question "En Ruby los bloques son objetos que continen codigo",
                    wrong => 'Cierto',
                    right => 'Falso'
            }
        end

        context "Comprobación de variables de clase" do
            it "Comprobación de las variables de la clase Quiz" do
                expect(@quiz).to respond_to(:name)
                expect(@quiz).to respond_to(:questions)
            end
            it "Comprobación de las variables de la clase Question" do
                expect(@quiz.get_q(1)).to respond_to(:enunciado)
                expect(@quiz.get_q(1)).to respond_to(:respuestas)
            end
            it "Comprobación de las variables de la clase Answer" do
                expect(@quiz.get_q(1).respuestas[0]).to respond_to(:sol)
                expect(@quiz.get_q(1).respuestas[0]).to respond_to(:index)
                expect(@quiz.get_q(1).respuestas[0]).to respond_to(:answer)
            end
        end
        
        context "Test de las preguntas" do
            it "Enunciado pregunta 1" do
                expect(@quiz.get_q(0).enunciado).to eq('¿Cuantos argumentos de tipo bloque puede recibir un metodo?')
            end
            it "Enunciado pregunta 2" do
                expect(@quiz.get_q(1).enunciado).to eq("En Ruby los bloques son objetos que continen codigo")
            end
        end
      
        context "Test de las respuestas" do
            it "Respuestas pregunta 1" do
                expect(@quiz.get_q(1).respuestas[0].right?).to eq(false)
            end
            it "Respuesta 1" do
                expect(@quiz.get_q(1).respuestas[1].right?).to eq(true)
            end
        end
    end
end
  