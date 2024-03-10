class ComentsController < ApplicationController
  def new
    @coment = Coment.new
  end

  def create
    coment = Coment.new(coment_params)
    coment.save
    redirect_to '/coments/new'
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def coment_params
    params.require(:coment).permit(:title, :body)
  end

end
