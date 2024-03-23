class ResponsesController < ApplicationController

  def create
    comment = Comment.find(params[:comment_id])
    response = current_user.responses.new(response_params)
    response.comment_id = comment.id
    if response.save
      flash[:notice] = "返信に成功しました"
      redirect_to comment_path(comment)
    else
      flash[:notice] = "返信に失敗しました"
      redirect_to comment_path(comment)
    end
  end

  def destroy
    Response.find(params[:id]).destroy
    redirect_to comment_path(params[:comment_id])
  end

  private

  def response_params
    params.require(:response).permit(:response)
  end

end
