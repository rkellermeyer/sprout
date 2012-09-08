class UsersController < ApplicationController
  def index
  end
  
  def home
    render partial: "home"
  end
end
