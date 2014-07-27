require 'spec_helper'

describe "empleados/index" do
  before(:each) do
    assign(:empleados, [
      stub_model(Empleado,
        :nombre => "Nombre",
        :apellidopaterno => "Apellidopaterno",
        :apellidomaterno => "Apellidomaterno",
        :rut => "Rut",
        :direccion => "Direccion",
        :telefono => "Telefono"
      ),
      stub_model(Empleado,
        :nombre => "Nombre",
        :apellidopaterno => "Apellidopaterno",
        :apellidomaterno => "Apellidomaterno",
        :rut => "Rut",
        :direccion => "Direccion",
        :telefono => "Telefono"
      )
    ])
  end

  it "renders a list of empleados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apellidopaterno".to_s, :count => 2
    assert_select "tr>td", :text => "Apellidomaterno".to_s, :count => 2
    assert_select "tr>td", :text => "Rut".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
  end
end
