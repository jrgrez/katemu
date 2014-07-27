class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :edit, :update, :destroy]

  # GET /empleados
  # GET /empleados.json
  def index
    @empleados = Empleado.all
  end

  # GET /empleados/1
  # GET /empleados/1.json
  def show
  end

  # GET /empleados/new
  def new
    @empleado = Empleado.new
  end

  # GET /empleados/1/edit
  def edit
  end

  # POST /empleados
  # POST /empleados.json
  def create
    @empleado = Empleado.new(empleado_params)

    respond_to do |format|
      if @empleado.save
        format.html { redirect_to @empleado, notice: 'Empleado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @empleado }
      else
        format.html { render action: 'new' }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleados/1
  # PATCH/PUT /empleados/1.json
  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.html { redirect_to @empleado, notice: 'Empleado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleados/1
  # DELETE /empleados/1.json
  def destroy

    Empleado.find(params[:id]).destroy
    flash[:success]='User Deleted'

   @empleado.destroy
    respond_to do |format|
      format.html { redirect_to empleados_url }
      format.json { head :no_content }
    end
  end

  def import
    Empleado.import(params[:file])
    redirect_to empleados_url, notice: "Empleados Importados."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado
      @empleado = Empleado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empleado_params
      params.require(:empleado).permit(:nombre, :apellidopaterno, :apellidomaterno, :rut, :direccion, :telefono)
    end
end
