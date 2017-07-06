class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]

  def new
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new
  end

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new(comment_params)
    if @comment.save
      redirect_to image_path(@comment.image)
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:image_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @image = Image.find(params[:image_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to image_path(@comment.image)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to image_path(@comment.image)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
