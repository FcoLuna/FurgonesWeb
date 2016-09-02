class SearchController < ApplicationController
  def create
    palabra= "%#{params[:keyword]}%"
    @parents = Parent.where("nombre LIKE ? OR rut LIKE ?" ,palabra,palabra)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: @parents}
      format.js
  end
end
end
