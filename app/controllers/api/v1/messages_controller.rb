class Api::V1::MessagesController < ApplicationController
  def index
    @message = Message.all.sample(1)
    render json: { messages: @message }.to_json

    @random = Message.order('RANDOM()').first
    render json: {
      message: @random.message
    }.to_json
  end
end
