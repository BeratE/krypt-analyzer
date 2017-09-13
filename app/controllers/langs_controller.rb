class LangsController < ApplicationController
  def index
    @langstats = Langstat.all
  end

  def new
    @langstat = Langstat.new
  end

  def create
    @langstat = Langstat.new(params.require(:langstat).permit!)
    if @langstat.save
      flash[:success] = "#{@langstat.language} submitted!"
      redirect_to langs_path
    else
      render 'new'
    end
  end
end
