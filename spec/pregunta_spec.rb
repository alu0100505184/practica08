require 'pract05'
module Pract05
  describe "Pregunta Global" do
    before :each do
      @p = PreguntaGlobal.new("Seleccione cuanto vale. 2 + 4")
    end
    
    context "Test de clase Pregunta Global" do
      it 'Comprobando la clase pregunta global' do
	expect(@p).to respond_to(:enunciado)
      end
      it 'Comprobando la clase pregunta global.Imprime enunciado' do
	@p.to_s.should eq ("Seleccione cuanto vale. 2 + 4")
      end
    end
   end
end