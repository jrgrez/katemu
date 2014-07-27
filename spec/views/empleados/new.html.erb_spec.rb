require 'spec_helper'

describe "empleados/new" do
  before(:each) do
    assign(:empleado, stub_model(Empleado,
      :nombre => "MyString",
      :apellidopaterno => "MyString",
      :apellidomaterno => "MyString",
      :rut => "MyString",
      :direccion => "MyString",
      :telefono => "MyString"
    ).as_new_record)
  end

  it "renders new empleado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", empleados_path, "post" do
      assert_select "input#empleado_nombre[name=?]", "empleado[nombre]"
      assert_select "input#empleado_apellidopaterno[name=?]", "empleado[apellidopaterno]"
      assert_select "input#empleado_apellidomaterno[name=?]", "empleado[apellidomaterno]"
      assert_select "input#empleado_rut[name=?]", "empleado[rut]"
      assert_select "input#empleado_direccion[name=?]", "empleado[direccion]"
      assert_select "input#empleado_telefono[name=?]", "empleado[telefono]"
    end
  end
end
