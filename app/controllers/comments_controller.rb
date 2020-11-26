class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to "/prototypes/#{@comment.prototype.id}"
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show" 
    end
  end

  def show 
    
  end

  private

  def comment_params
    params.require(:comment).permit(:text,:user_id,:prototype_id).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end