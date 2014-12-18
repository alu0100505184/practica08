#encoding: utf-8
require 'pract05.rb'
require 'pract05/naranjero.rb'
module Pract05
    describe "Clase Naranjero" do
        before :all do
            @naranjero = Naranjero.new
            @naranjero2 = Naranjero.new
            @naranjero3 = Naranjero.new
            
            @naranjero3.contador = 10
            
            @thread1 = Thread.new{@naranjero2.uno_mas(5)}
            @thread2 = Thread.new{@naranjero2.recolectar_una(15)}
            
            @thread1.join
            @thread2.join
        end
      
        context "Pruebas de la clase Naranjero" do
            it "Comprobando la clase de Naranjero" do
                expect(@naranjero).instance_of?(Naranjero)
            end
            it "Comprobando variables de la clase Naranjero" do
                expect(@naranjero).to respond_to(:edad)
                expect(@naranjero).to respond_to(:altura)
                expect(@naranjero).to respond_to(:contador)
            end
            
            it "El naranjero debe contener datos" do
                expect(@naranjero.edad).to eq(0)
                expect(@naranjero.altura).to eq(0)
                expect(@naranjero.contador).to eq(0)
            end
          
            it "Comprobando el sumar año" do
                puts "COMPROBANDO SUMAR AÑO"
                @naranjero.uno_mas(2)
                expect(@naranjero.edad).to eq(2)
                expect(@naranjero.altura.to_i).to eq(1)
            end
            
            it "Comprobando muerte del naranjero" do
                expect(@naranjero.edad).to eq(2)
                @naranjero.set_edad(30)
                expect(@naranjero.edad).to eq(30)
                expect(@naranjero.vive).to eq(false)
            end
            
            it "Comprobando el recolectar" do
                puts "RECOLECTANDO 1 NARANJA DE 10"
                @naranjero3.recolectar_una(1)
                expect(@naranjero3.contador).to eq(9)
            end
            
        end
      
    end
  
end