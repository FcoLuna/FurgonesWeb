class SearchController < ApplicationController
  def create
    @palabra= params[:keyword]
     if @palabra
       @parents = Parent.where(:rut => @palabra)
     else
       @parents = Parent.all
      end

end
end


  #palabra= "%#{params[:keyword]}%"
  #@parents = Parent.where(:rut => palabra)
  #respond_to do |format|
  #  format.html { redirect_to root_path }
  #  format.json { render json: @parents}
  #  format.js
#end
