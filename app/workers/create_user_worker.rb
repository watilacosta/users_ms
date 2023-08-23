require 'sneakers'

class CreateUserWorker
  include Sneakers::Worker

  from_queue 'users.create', env: nil

  def work(msg)
    CreateUser.call(params: JSON.parse(msg))

    ack!
  end
end
