class MessagesController  < ApplicationController
  respond_to :html, :json, :js
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @q = Message.search(params[:q])
    @messages = @q.result(:distinct => true)
    respond_with(@messages)
  end

  def create

  end

  def show

  end

  def update

  end

  def new

  end
end
