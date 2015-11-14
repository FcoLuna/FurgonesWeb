class StundentsController < ApplicationController
  before_action :set_stundent, only: [:show, :edit, :update, :destroy]

  # GET /stundents
  # GET /stundents.json
  def index
    @stundents = Stundent.all
  end

  # GET /stundents/1
  # GET /stundents/1.json
  def show
  end

  # GET /stundents/new
  def new
    @stundent = Stundent.new
  end

  # GET /stundents/1/edit
  def edit
  end

  # POST /stundents
  # POST /stundents.json
  def create
    @stundent = Stundent.new(stundent_params)

    respond_to do |format|
      if @stundent.save
        format.html { redirect_to @stundent, notice: 'Stundent was successfully created.' }
        format.json { render :show, status: :created, location: @stundent }
      else
        format.html { render :new }
        format.json { render json: @stundent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stundents/1
  # PATCH/PUT /stundents/1.json
  def update
    respond_to do |format|
      if @stundent.update(stundent_params)
        format.html { redirect_to @stundent, notice: 'Stundent was successfully updated.' }
        format.json { render :show, status: :ok, location: @stundent }
      else
        format.html { render :edit }
        format.json { render json: @stundent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stundents/1
  # DELETE /stundents/1.json
  def destroy
    @stundent.destroy
    respond_to do |format|
      format.html { redirect_to stundents_url, notice: 'Stundent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stundent
      @stundent = Stundent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stundent_params
      params.require(:stundent).permit(:nombre, :apellido, :rut, :jornada, :direccion, :comuna, :parent_id, :van_id, :school_id)
    end
end
