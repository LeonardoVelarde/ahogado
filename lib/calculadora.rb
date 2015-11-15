class Calculadora
  def sumar(cadena)
    if cadena == ""
    return 0
    else
      var = cadena.split(',')
      suma = 0
      var.each do |elem|
        suma = suma + elem.to_i
      end
      return suma
    end
  end

end
