class CommentsController < ApplicationController

  def create
    @comment = Comment.new(commnet_params)
    if @comment.save
    redirect_to prototype_path(@comment.prototype)
    else  
      @prototype = @comment.prototype
      @comments = @prototype.comments
      
      render "prototypes/show"
    end
  end

  private
  def commnet_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
