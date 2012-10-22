class PiedraPapelTijeras
  attr_accessor :tiradas, :ganadoras, :resultados
  attr_reader :humano, :maquina, :resultados
  def initialize(ganadoras, resultados)
    @ganadoras = ganadoras
    @tiradas = ganadoras.keys
    @resultados = resultados
  end
  def obtener_humano(cadena)
    @humano = cadena.to_sym
    raise TypeError unless @tiradas.include?(@humano)
    return @humano
  end
  def obtener_maquina
    @maquina = @tiradas[rand(3)] #ordenar aleatoriamente
  end
  def jugar
    raise TypeError unless @humano != nil
    obtener_maquina
    if @humano == @maquina #empate
      @resultado = @resultados[2]
    elsif @humano == @ganadoras[maquina]
      @resultado = @resultados[0]
    else #ganar
      @resultado = @resultados[1]      
    end
  end
end