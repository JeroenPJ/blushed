class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    @message = Message.new
    @messages = Message.feed
  end
end
