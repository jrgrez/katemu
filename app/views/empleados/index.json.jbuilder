json.array!(@empleados) do |empleado|
  json.extract! empleado, :nombre, :apellidopaterno, :apellidomaterno, :rut, :direccion, :telefono
  json.url empleado_url(empleado, format: :json)
end