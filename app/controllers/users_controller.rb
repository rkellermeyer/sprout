class UsersController < ApplicationController
  respond_to :html, :json, :js
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @q = User.search(params[:q])
    @users = @q.result(:distinct => true)
    respond_with(@users)
  end

  def create

  end
  
  #def home
  #  render partial: "home", :user => @user
  #end
end
