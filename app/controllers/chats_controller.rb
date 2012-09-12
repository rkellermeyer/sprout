class ChatsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  respond_to :html, :js, :json

  def index
    if params[:q].nil?
      @chats = Chat.all
    else
      @q = Chat.search(params[:q])
      @chats = @q.result(:distinct => true)
      respond_with(@chats)
    end
  end

  # GET /chats/1
  # GET /chats/1.json
  def show
    @chat = Chat.find(params[:id])
    respond_with(@chat)
  end

  # GET /chats/new
  # GET /chats/new.json
  def new
    @chat = Chat.new
    respond_with(@chat)
  end

  # GET /chats/1/edit
  def edit
    @chat = Chat.find(params[:id])
  end

  # POST /chats
  # POST /chats.json
  def create
    @chat = Chat.new(params[:chat])
    @message = @chat.message.(params[:message])
    @chat.save? ? respond_with(@chat) : respond_with(@chat.errors)
  end

  # PUT /chats/1
  # PUT /chats/1.json
  # TODO: Does respond_with now work with PUT?
  def update
    @chat = Chat.find(params[:id])

    respond_to do |format|
      if @chat.update_attributes(params[:chat])
        format.html { redirect_to @chat, notice: 'Chat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chats/1
  # DELETE /chats/1.json
  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy

    respond_to do |format|
      format.html { redirect_to chats_url }
      format.json { head :no_content }
    end
  end
end