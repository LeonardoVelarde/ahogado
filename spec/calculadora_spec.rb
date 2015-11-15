require "calculadora"

describe Calculadora do
  it "dado una cadena vacia el resultado deberia ser 0" do
    cal = Calculadora.new
    resultado = cal.sumar("")
    expect(resultado).to eq(0)
  end

  it "dado una cadena con un solo numero deberia devolver el mismo" do
    cal = Calculadora.new
    resultado = cal.sumar("1")
    expect(resultado).to eq(1)
  end

  it "dado una cadena con 2 numeros deberia devolver la suma de ambos" do
    cal = Calculadora.new
    resultado = cal.sumar("1,2")
    expect(resultado).to eq(3)
  end
end
