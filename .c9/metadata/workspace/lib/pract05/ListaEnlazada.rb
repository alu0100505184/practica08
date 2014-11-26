{"changed":true,"filter":false,"title":"ListaEnlazada.rb","tooltip":"/lib/pract05/ListaEnlazada.rb","value":"require \"pract05/version\"\n\nmodule Pract05\n\tclass ListaEnlazada\n\t\tinclude Enumerable\n\t    attr_accessor :top, :tail\n\t    \n\t    def initialize (nodes)\n\t    \t@top = Nodo.new(nodes[0],nil,nil)\n\t\t\t@tail = Nodo.new(nodes[1],nil,@top)\n\t\t\t@top.next = @tail\n\t\t\tif (nodes.length > 2)\n\t\t\t\t(2..nodes.length-1).each do |i|\n\t\t\t\t\t@tail.next = Nodo.new(nodes[i],nil,@tail)\n\t\t\t\t\t@tail = @tail.next\n\t\t\t\tend\n\t\t\tend\n\t\tend\n    \n\t    def push(value)\n\t    \tif value.is_a? Array then\n\t    \t\t(0..value.length-1).each do |i|\n\t    \t\t\t@tail.next = Nodo.new(value[i],nil,@tail)\n\t    \t\t\t@tail =  @tail.next\n\t    \tend\n\t    \telse\n\t    \t\t@tail.next = Nodo.new(value,nil,@tail)\n\t    \t\t@tail =  @tail.next\n\t    \tend\n\t    \treturn true\n\t    end\n    \n\t    def pushIni(value)\n\t    \tif value.is_a? Array then\n\t    \t\t(0..value.length-1).each do |i|\n\t    \t\t\t@top.ant = Nodo.new(value[i],@top,nil)\n\t    \t\t\t@top = @top.ant\n\t    \tend\n\t    \n\t    \telse (@top != nil)\n\t    \t\t@top.ant = Nodo.new(value,@top,nil)\n\t    \t\t@top = @top.ant\n\t    \tend\n\t    \treturn true\n\t    end\n    \n\t    def pop\n\t    \taux = @top.value\n\t    \tif (@top.next != nil) then\n\t    \t\t@top = @top.next\n\t    \t\t@top.ant = nil\n\t    \tend\n\t    \treturn aux\n\t    end\n    \n\t    def popFin\n\t    \taux = @tail.value\n\t    \tif (@tail.ant != nil) then\n\t    \t\t@tail = @tail.ant\n\t    \t\t@tail.next = nil\n\t    \tend\n\t    \treturn aux\n\t    end\n\t    \n\t    def borrarLista()\n\t    \taux = @top\n\t    \twhile (@top.next != nil)\n\t    \t\t@top = @top.next\n\t    \t\t@top.ant = nil\n\t    \tend\n\t    \t#@top = nil\n\t    end\n\t   \t\n\t    def borrar(index)\n\t    \tx = @top\n\t    \ta = 0\n\t    \twhile (x !=nil) && (a != index)\n\t    \t\tif (a == index) then\n\t    \t\t\tx.ant.next = x.next\n\t    \t\t\tx.next.ant = x.ant\n\t    \t\t\treturn x\n\t    \t\tend\n\t    \t\ta = a + 1\n\t    \t\tx = x.next\n\t    \tend\n\t    end\n\t    \n\t    def second_ant\n\t    \taux = @top.next.ant\n\t    end\n      \n\t    def each\n\t    \tx = @top\n\t    \twhile (x !=nil)\n\t    \t\tyield x\n\t    \t\tx = x.next\n\t    \tend\n\t    end\n      \n\t    def [](index)\n\t    \tx = @top\n\t    \ta = 0\n\t    \twhile (x !=nil) && (a <= index)\n\t    \t\tif (a == index) then\n\t    \t\t\treturn x\n\t    \t\tend\n\t    \t\ta = a + 1\n\t    \t\tx = x.next\n\t    \tend\n\t    end\n      \n\t    def length\n\t    \tx = @top\n\t    \ta = 0\n\t    \twhile (x !=nil)\n\t    \t\ta = a + 1\n\t    \t\tx = x.next\n\t    \tend\n\t    \treturn a\n\t    end\n\t      \n\t    alias size length\n\t    \n\t    def invertirLista(lista, aux)\n      \t\tlista.map {|x| aux.pushIni(x.value) }\n      \t\taux.popFin\n      \t\treturn aux\n    \tend\n    end\nend","undoManager":{"mark":-1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":125,"column":8},"end":{"row":125,"column":9},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":125,"column":8},"end":{"row":125,"column":9},"action":"remove","lines":["#"]}]}]]},"ace":{"folds":[],"scrolltop":1637,"scrollleft":0,"selection":{"start":{"row":125,"column":8},"end":{"row":125,"column":8},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1417000526519}