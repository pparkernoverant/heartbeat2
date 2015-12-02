class MessageSayer
  @queue = :message_queue

  def self.perform(message)
    puts "[#{Time.now}] - #{message}"
    Message.create(content: message)
  end
end