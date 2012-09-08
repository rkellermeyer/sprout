class UsersController < ApplicationController
  respond_to :html, :json, :js
  before_filter :authenticate_user!, except: [:index, :show]
  def index
  end
  
  def show
    @user = user
    respond_with(@user)
  end
  
  #def home
  #  render partial: "home", :user => @user
  #end
end
