class EachgossipController < ApplicationController
  def index
    @current_gossip = MyGossip.find(params["id"])
  end
end
