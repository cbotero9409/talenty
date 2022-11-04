class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.find(params[:id])
    @mensaje = Mensaje.new(mensaje_params)
  end

  private

  def mensaje_params
    params.require(:mensaje).permit(:content)
  end
end
