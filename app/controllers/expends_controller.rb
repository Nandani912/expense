class ExpendsController < ApplicationController
  before_action :authenticate_user!
  def index
    @expends = current_user.expends
  end
  def show
    @expend = Expend.find(params[:id])
  end
  def new
    @expend=Expend.new
  end
  def create
    @expend = current_user.expends.new(expend_params) 
    if @expend.save
      redirect_to @expend
    else
      render 'new'
    end
  end  
  def edit
    @expend=Expend.find(params[:id])
  end
  def update
    @expend=Expend.find(params[:id])
    if @expend.update(expend_params)
      redirect_to @expend
      else
        render 'edit'
    end
  end
  def destroy
    @expend=Expend.find(params[:id])
    @expend.destroy
    redirect_to expends_path
  end
  private
  def expend_params
  params.require(:expend).permit(:description, :amount, :date)
  end
end
