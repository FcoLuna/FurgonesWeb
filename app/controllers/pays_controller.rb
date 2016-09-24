class PaysController < ApplicationController
  before_action :set_pay, only: [:show, :edit, :update, :destroy]

  # GET /pays
  # GET /pays.json
  def index
    @pays = Pay.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /pays/1
  # GET /pays/1.json
  def show
  end

  # GET /pays/new
  def new
    @pay = Pay.new
  end

  # GET /pays/1/edit
  def edit
  end

  # POST /pays
  # POST /pays.json
  def create
    @pay = Pay.new(pay_params)

    respond_to do |format|
      if @pay.save
        format.html { redirect_to @pay, notice: 'Pago incluido con Exito!.' }
        format.json { render :show, status: :created, location: @pay }
      else
        format.html { render :new }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pays/1
  # PATCH/PUT /pays/1.json
  def update
    respond_to do |format|
      if @pay.update(pay_params)
        format.html { redirect_to @pay, notice: 'Pago editado.' }
        format.json { render :show, status: :ok, location: @pay }
      else
        format.html { render :edit }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pays/1
  # DELETE /pays/1.json
  def destroy
    @pay.destroy
    respond_to do |format|
      format.html { redirect_to pays_url, notice: 'El pago a sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay
      @pay = Pay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_params
      params.require(:pay).permit(:mes, :fecha, :parent_id, :monto)
    end
end
