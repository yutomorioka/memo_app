class MemosController < ApplicationController
  def index
    @memo = Memo.new
    @memos = Memo.all
  end
  
  def create
    @memo = Memo.new(memo_params)
    @memo.save
    redirect_to root_path
  end

  def update
  end

  def destroy
  end
  
  private
  
  def memo_params
    params.require(:memo).permit(:title, :body)
  end
  
end
