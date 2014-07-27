require 'spec_helper'

describe "empleados/show" do
  before(:each) do
    @empleado = assign(:empleado, stub_model(Empleado,
      :nombre => "Nombre",
      :apellidopaterno => "Apellidopaterno",
      :apellidomaterno => "Apellidomaterno",
      :rut => "Rut",
      :direccion => "Direccion",
      :telefono => "Telefono"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Apellidopaterno/)
    rendered.should match(/Apellidomaterno/)
    rendered.should match(/Rut/)
    rendered.should match(/Direccion/)
    rendered.should match(/Telefono/)
  end
end
