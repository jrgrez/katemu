class Empleado < ActiveRecord::Base

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path,:headers=> true, :encoding=>'ISO-8859-1') do |row|

      separado = row.to_s.split(';')

      Empleado.create!(nombre: separado[0], apellidopaterno:separado[1], apellidomaterno: separado[2], rut:separado[3], direccion:separado[4], telefono:separado[5])
    end
  end

  def self.destroy(file)

    empleados.foreach do |row|

      Empleado.destroy!

    end

  end

end
