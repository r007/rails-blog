class CommentsController < ApplicationController
  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    if @comment.errors.any?
      render "posts/show"
    else
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end
end
