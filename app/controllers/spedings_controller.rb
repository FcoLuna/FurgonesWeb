class SpedingsController < ApplicationController
  before_action :set_speding, only: [:show, :edit, :update, :destroy]

  # GET /spedings
  # GET /spedings.json
  def index
    @spedings = Speding.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /spedings/1
  # GET /spedings/1.json
  def show
  end

  # GET /spedings/new
  def new
    @speding = Speding.new
  end

  # GET /spedings/1/edit
  def edit
  end

  # POST /spedings
  # POST /spedings.json
  def create
    @speding = Speding.new(speding_params)

    respond_to do |format|
      if @speding.save
        format.html { redirect_to @speding, notice: 'Speding was successfully created.' }
        format.json { render :show, status: :created, location: @speding }
      else
        format.html { render :new }
        format.json { render json: @speding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spedings/1
  # PATCH/PUT /spedings/1.json
  def update
    respond_to do |format|
      if @speding.update(speding_params)
        format.html { redirect_to @speding, notice: 'Speding was successfully updated.' }
        format.json { render :show, status: :ok, location: @speding }
      else
        format.html { render :edit }
        format.json { render json: @speding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spedings/1
  # DELETE /spedings/1.json
  def destroy
    @speding.destroy
    respond_to do |format|
      format.html { redirect_to spedings_url, notice: 'Speding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speding
      @speding = Speding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speding_params
      params.require(:speding).permit(:nombre, :monto, :van_id)
    end
end
