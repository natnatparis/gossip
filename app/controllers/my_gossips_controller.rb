class MyGossipsController < ApplicationController
    def create  
        @my_gossip = My_gossip.new(title: params[:title], content: params[:content], user: User.all.sample)
        if @my_gossip.save
            redirect_to my_gossips_path
        else 
            render :new
        end
    end

    def new
        @my_gossip = My_gossip.new
    end
end
