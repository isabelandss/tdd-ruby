class Calculadora
  def calcular(x, y, operacao) 
    case operacao
    when '+'
      x + y
    when '*'
      x * y
    when '/'
      return 'ERRO' if (y == 0)
      x.to_f / y
    when '-'
      x - y
    else 
      "OPERADOR INVALIDO"
    end
  end
end