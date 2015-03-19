class Tweet
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def valid?
    message.size < 140
  end
end
