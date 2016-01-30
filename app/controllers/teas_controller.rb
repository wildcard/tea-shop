class TeasController < ApplicationController

  def index
    @teas = Tea.all
  end

  def show
    @tea = Tea.find(params[:id])
  end

  def new
    @tea = Tea.new
  end

  def edit

  end

  def create
    @tea = Tea.new(tea_params)

    if @tea.save
      redirect_to @tea
    else
      render 'new'
    end
  end

  def update

  end

  private
    def tea_params
      params.require(:tea).permit(:name, :price, :description)
    end

end
