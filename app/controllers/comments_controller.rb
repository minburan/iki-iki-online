class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  def index
    @comments = Comment.page(params[:page])
  end

  def show
    @comment = Comment.find(params[:id])
    @response = Response.new
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to comments_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to comment_path(comment.id)
    else
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

end
