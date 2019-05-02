class CommentsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
    @comment = Comment.find(params[:id])
  end


  def update
    @comment = Comment.find(params[:id])
    gossip_params = params.require(:comment).permit(:content)

    if @comment.update(gossip_params)
      redirect_to gossip_path(@comment.gossip.id)
    else
      render :edit
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@comment.gossip.id)
  end
end
