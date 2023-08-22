class MemosController < ApplicationController
  def index
    @memo = Memo.new
  end
  
  def create
    @memo = Memo.new(memo_params)
    @memo.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end
  
  private
  
  def memo_params
    params.require(:memo).permit(:title, :body)
  end
  
end
