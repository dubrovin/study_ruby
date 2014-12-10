class CommentsController < ApplicationController

  before_action :post
  before_action :authenticate_user!


  def create
    puts params
    comment = post.comments.new(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Comment was successflly created"
    else
      flash[:notice] = "Comment wasn't created"
    end
      
    redirect_to post_path(post)
  end	


  private
  def post
    @post ||= Post.find(params[:post_id])
  end
  
  def comment_params
    params.require(:comment).permit(:title, :message)
  end

  helper_method :post
end
