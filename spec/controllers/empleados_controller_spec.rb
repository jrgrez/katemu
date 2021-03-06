require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EmpleadosController do

  # This should return the minimal set of attributes required to create a valid
  # Empleado. As you add validations to Empleado, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nombre" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmpleadosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all empleados as @empleados" do
      empleado = Empleado.create! valid_attributes
      get :index, {}, valid_session
      assigns(:empleados).should eq([empleado])
    end
  end

  describe "GET show" do
    it "assigns the requested empleado as @empleado" do
      empleado = Empleado.create! valid_attributes
      get :show, {:id => empleado.to_param}, valid_session
      assigns(:empleado).should eq(empleado)
    end
  end

  describe "GET new" do
    it "assigns a new empleado as @empleado" do
      get :new, {}, valid_session
      assigns(:empleado).should be_a_new(Empleado)
    end
  end

  describe "GET edit" do
    it "assigns the requested empleado as @empleado" do
      empleado = Empleado.create! valid_attributes
      get :edit, {:id => empleado.to_param}, valid_session
      assigns(:empleado).should eq(empleado)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Empleado" do
        expect {
          post :create, {:empleado => valid_attributes}, valid_session
        }.to change(Empleado, :count).by(1)
      end

      it "assigns a newly created empleado as @empleado" do
        post :create, {:empleado => valid_attributes}, valid_session
        assigns(:empleado).should be_a(Empleado)
        assigns(:empleado).should be_persisted
      end

      it "redirects to the created empleado" do
        post :create, {:empleado => valid_attributes}, valid_session
        response.should redirect_to(Empleado.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved empleado as @empleado" do
        # Trigger the behavior that occurs when invalid params are submitted
        Empleado.any_instance.stub(:save).and_return(false)
        post :create, {:empleado => { "nombre" => "invalid value" }}, valid_session
        assigns(:empleado).should be_a_new(Empleado)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Empleado.any_instance.stub(:save).and_return(false)
        post :create, {:empleado => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested empleado" do
        empleado = Empleado.create! valid_attributes
        # Assuming there are no other empleados in the database, this
        # specifies that the Empleado created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Empleado.any_instance.should_receive(:update).with({ "nombre" => "MyString" })
        put :update, {:id => empleado.to_param, :empleado => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested empleado as @empleado" do
        empleado = Empleado.create! valid_attributes
        put :update, {:id => empleado.to_param, :empleado => valid_attributes}, valid_session
        assigns(:empleado).should eq(empleado)
      end

      it "redirects to the empleado" do
        empleado = Empleado.create! valid_attributes
        put :update, {:id => empleado.to_param, :empleado => valid_attributes}, valid_session
        response.should redirect_to(empleado)
      end
    end

    describe "with invalid params" do
      it "assigns the empleado as @empleado" do
        empleado = Empleado.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Empleado.any_instance.stub(:save).and_return(false)
        put :update, {:id => empleado.to_param, :empleado => { "nombre" => "invalid value" }}, valid_session
        assigns(:empleado).should eq(empleado)
      end

      it "re-renders the 'edit' template" do
        empleado = Empleado.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Empleado.any_instance.stub(:save).and_return(false)
        put :update, {:id => empleado.to_param, :empleado => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested empleado" do
      empleado = Empleado.create! valid_attributes
      expect {
        delete :destroy, {:id => empleado.to_param}, valid_session
      }.to change(Empleado, :count).by(-1)
    end

    it "redirects to the empleados list" do
      empleado = Empleado.create! valid_attributes
      delete :destroy, {:id => empleado.to_param}, valid_session
      response.should redirect_to(empleados_url)
    end
  end

end
