class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    mine = ApplicationController.render(
      partial: '/messages/message', 
      locals: { message: message }
    )
    
    ActionCable.server.broadcast("room_channel_#{message.room_id}", mine: mine)
  
  end
end
