class CampusesController < ApplicationController
  def index
    @campuses = Campus.all
    binding.pry
  end
  
  def new
    @campus = Campus.new
  end

  def create
    @campus = Campus.create(campus_params)
    redirect_to campus_path(@campus)
  end

  def show
    @campus = Campus.find(params[:id])
  end

  private

  def campus_params
    params.require(:campus).permit(:location, :campus_pic)
  end
end