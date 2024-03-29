class FavoritesController < ApplicationController

  def create
    comment = Comment.find(params[:comment_id])
    favorite = current_user.favorites.new(comment_id: comment.id)
    favorite.save
    redirect_to comment_path(comment)
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    favorite = current_user.favorites.find_by(comment_id: comment.id)
    favorite.destroy
    redirect_to comment_path(comment)
  end

  def index
    @comments = Comment.where(id: current_user.favorites.pluck(:comment_id))
    @favorites = current_user.favorites
  end

end
