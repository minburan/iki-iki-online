class ResponsesController < ApplicationController

  def create
    comment = Comment.find(params[:comment_id])
    response = current_user.responses.new(response_params)
    response.comment_id = comment.id
    response.save
    redirect_to comment_path(comment)
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
