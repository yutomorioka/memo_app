class MemosController < ApplicationController
  def index
    @memo = Memo.new
    @memos = Memo.all
  end

  def create
    @memo = Memo.new(memos_params)
    @memo.save
    redirect_to  request.referer
  end

  def update
    @memo = Memo.find(params[:id])
    @memo.update(memos_params)
    redirect_to  request.referer
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to  request.referer
  end

  private

  def memos_params
    params.require(:memo).permit(:title, :body)
  end

end
