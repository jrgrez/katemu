class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellidopaterno
      t.string :apellidomaterno
      t.string :rut
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
