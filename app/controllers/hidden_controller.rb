class HiddenController < ApplicationController
  def index
    @first_name = params["first_name"]
    puts params
  end
end
