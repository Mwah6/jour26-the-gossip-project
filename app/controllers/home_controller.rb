class HomeController < ApplicationController
  def gossip_array
    @gossip_array = Gossip.all
  end
end
