{"changed":true,"filter":false,"title":"Nodo.rb","tooltip":"/lib/pract05/Nodo.rb","value":"require \"pract05/version\"\n\nmodule Pract05  \n    include Comparable\n  Nodo = Struct.new(:value, :next, :ant) do\n\tattr_accessor :value, :next, :ant\n\tdef initialize(valuee, nextt, antt)\n         @value, @next, @ant=valuee, nextt, antt\n    end\n    \n    def <=>(anOther)\n      value.size <=> anOther.value.size\n    end\n    \n    def ==(anOther)\n      value.size == anOther.value.size &&  value == anOther\n    end\n  end \nend ","undoManager":{"mark":-1,"position":9,"stack":[[{"group":"doc","deltas":[{"start":{"row":2,"column":16},"end":{"row":3,"column":0},"action":"insert","lines":["",""]},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":4},"end":{"row":3,"column":22},"action":"insert","lines":["include Comparable"]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"remove","lines":[" "]},{"start":{"row":8,"column":7},"end":{"row":9,"column":0},"action":"insert","lines":["",""]},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":4},"end":{"row":10,"column":0},"action":"insert","lines":["",""]},{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":10,"column":4},"end":{"row":16,"column":7},"action":"insert","lines":["def <=>(anOther)","      enunciado.size <=> anOther.enunciado.size","    end","    ","    def ==(anOther)","      enunciado.size == anOther.enunciado.size &&  enunciado == anOther","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":6},"end":{"row":11,"column":15},"action":"remove","lines":["enunciado"]},{"start":{"row":11,"column":6},"end":{"row":11,"column":11},"action":"insert","lines":["value"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":29},"end":{"row":11,"column":38},"action":"remove","lines":["enunciado"]},{"start":{"row":11,"column":29},"end":{"row":11,"column":34},"action":"insert","lines":["value"]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":32},"end":{"row":15,"column":41},"action":"remove","lines":["enunciado"]},{"start":{"row":15,"column":32},"end":{"row":15,"column":37},"action":"insert","lines":["value"]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":47},"end":{"row":15,"column":56},"action":"remove","lines":["enunciado"]},{"start":{"row":15,"column":47},"end":{"row":15,"column":52},"action":"insert","lines":["value"]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":6},"end":{"row":15,"column":15},"action":"remove","lines":["enunciado"]},{"start":{"row":15,"column":6},"end":{"row":15,"column":11},"action":"insert","lines":["value"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":15,"column":11},"end":{"row":15,"column":11},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":72,"mode":"ace/mode/ruby"}},"timestamp":1415980159581}