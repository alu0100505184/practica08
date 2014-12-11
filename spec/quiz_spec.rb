#encoding: utf-8
'pract05'
require 'pract05/quiz.rb'

module Pract05
    describe "Clase exmn" do
        before :each do
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

        context "Test de las preguntas" do
            it "Enunciado pregunta 1" do
                expect(@quiz.preguntas(0).to_s).to eq('¿Cuantos argumentos de tipo bloque puede recibir un metodo?')
            end
            it "Enunciado pregunta 2" do
                expect(@quiz.preguntas(1).to_s).to eq("En Ruby los bloques son objetos que continen codigo")
            end
        end
      
        context "Test de las respuestas" do
            it "Respuestas pregunta 1" do
                expect(@quiz.preguntas(0).correcta.to_s).to eq('1')
            end
            it "Respuesta 1" do
                expect(@quiz.preguntas(1).correcta.to_s).to eq('Falso')
            end
        end
    end
end
  