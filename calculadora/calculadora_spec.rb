require './calculadora'

RSpec.describe Calculadora do
  it 'retorna 7 quando somar 3 e 4' do
    instancia = described_class.new
    resultado = instancia.calcular(3, 4, '+')
    expect(resultado).to eq 7
  end

  it 'retorna 12 quando multiplicar 3 e 4' do
    instancia = described_class.new
    resultado = instancia.calcular(3, 4, '*')
    expect(resultado).to eq 12
  end

  it 'retorna 10 quando dividir 20 por 2' do
    instancia = described_class.new
    resultado = instancia.calcular(20, 2, '/')
    expect(resultado).to eq 10
  end

  it 'retorna 10 quando dividir 20 por 2' do
    instancia = described_class.new
    resultado = instancia.calcular(5, 2, '/')
    expect(resultado).to eq 2.5
  end

  it 'retorna mensagem de erro quando dividir por 0' do
    instancia = described_class.new
    resultado = instancia.calcular(5, 0, '/')
    expect(resultado).to eq 'ERRO'
  end

  it 'retorna mensagem de erro quando passar um operador inválido' do
    instancia = described_class.new
    resultado = instancia.calcular(5, 4, 'invalido')
    expect(resultado).to eq 'OPERADOR INVALIDO'
  end
end