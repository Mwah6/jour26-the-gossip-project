class GossipController < ApplicationController
  def gossip_display
    @gossip = Gossip.find(params[:id])
  end
end
