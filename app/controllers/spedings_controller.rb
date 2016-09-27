class SpedingsController < ApplicationController
  before_action :set_spending, only: [:show, :edit, :update, :destroy]

  # GET /spendings
  # GET /spendings.json
  def index
    @spedings= Speding.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /spendings/1
  # GET /spendings/1.json
  def show
  end

  # GET /spendings/new
  def new
    @snding = Speding.new
  end

  # GET /spendings/1/edit
  def edit
  end

  # POST /spendings
  # POST /spendings.json
  def create
    @spending = Speding.new(spending_params)

    respond_to do |format|
      if @spending.save
        format.html { redirect_to @speding, notice: 'Gasto regustrado con exito.' }
        format.json { render :show, status: :created, location: @speding }
      else
        format.html { render :new }
        format.json { render json: @speding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spendings/1
  # PATCH/PUT /spendings/1.json
  def update
    respond_to do |format|
      if @speding.update(spending_params)
        format.html { redirect_to @speding, notice: 'Gasto editado con Exito.' }
        format.json { render :show, status: :ok, location: @speding }
      else
        format.html { render :edit }
        format.json { render json: @speding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spendings/1
  # DELETE /spendings/1.json
  def destroy
    @speding.destroy
    respond_to do |format|
      format.html { redirect_to spendings_url, notice: 'Gasto eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spending
      @speding = Speding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spending_params
      params.require(:speding).permit(:nombre, :monto, :van_id)
    end
end
