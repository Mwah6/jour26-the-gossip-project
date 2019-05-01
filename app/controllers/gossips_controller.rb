class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end
  def show
    @gossip = Gossip.find(params[:id])
  end
  def index
    @gossip_array = Gossip.all
  end
  def create
    @gossip = Gossip.new(content: params[:content], title: params[:title], user: User.all.sample)

    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to gossips_path
    else
      render new_gossip_path
    end
  end
end
