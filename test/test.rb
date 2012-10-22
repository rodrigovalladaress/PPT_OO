require "lib/ppt"
require "test/unit"
class TestPiedra_Papel_Tijeras < Test::Unit::TestCase
  
  def setup
    @tiradas = [:piedra, :papel, :tijeras]
    @ganadoras = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra}
    @resultados = [:gane, :perdi, :empate]
    @ppt = PiedraPapelTijeras.new(@ganadoras, @resultados)
  end
  def test_play
    assert_equal 'piedra', @ppt.obtener_humano('piedra').to_s
    assert_equal :piedra, @ppt.obtener_humano('piedra')
    @ppt.obtener_humano('piedra')
    score = []
    assert_nothing_raised {100.times do score.push @ppt.jugar end}
    assert_raise(TypeError) {@ppt.obtener_humano('Psíquico')}
  end
end