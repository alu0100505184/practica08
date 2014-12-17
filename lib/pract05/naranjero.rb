#encoding: utf-8
require "pract05/version"

module Pract05
    class Naranjero
        attr_accessor :edad, :altura, :contador, :vive, :naranjas
        
        def initialize
            @edad = 0
            @altura = 0
            @contador = 0
            @vive = true
            @naranjas = []
        end
        
        def set_edad(edad)
            @edad = edad
            if edad >= 30
                @vive = false
            end
        end
        
        def uno_mas(i)
            j = 0
            cont = 0
            mutex = Mutex.new
            while j < i
                if @edad >= 30     #el arbol muere
                    @vive = false
                    puts "El árbol ha muerto"
                else
                    @edad += 1
                    @vive == true
                    if altura.to_i < 3
                        @altura += 0.5
                    else
                        @altura += 0.2
                    end
                    if @edad > 3
                        mutex.lock
                        n = 2 * @edad
                        @contador += n
                        @naranjas << n
                        puts "El árbol ha dado #{@naranjas[cont]} naranjas"
                        mutex.unlock
                        cont += 1
                    else
                        puts "El árbol es muy joven, aún no da naranjas"
                    end
                end
                j += 1
                sleep(1)
            end
        end
        
        def recolectar_una(i)
            puts "\n"
            j = 0
            mutex = Mutex.new
            while j < i
                if @vive == true
                    if contador > 0
                        mutex.lock
                        @contador -= 1
                        j += 1
                        mutex.unlock
                        puts "La naranja estaba deliciosa, quedan #{contador} naranjas"
                    else
                        puts "No hay naranjas"
                        sleep(2)
                    end
                else
                    puts "El árbol está muerto"
                end
            end
        end
    end
end