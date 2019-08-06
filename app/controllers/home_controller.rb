class HomeController < ApplicationController
  def index
    @all_gossips=MyGossip.all
    end
  end
