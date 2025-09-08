class MainController < ApplicationController
  def index
  end

  def about
    @created_by = "Risha Thmmancherla"
    @id=params[:id]
    @page=params[:page]
    
    # render('about')
  end
end
