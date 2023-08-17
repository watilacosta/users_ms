# frozen_string_literal: true

class CreateUser # :nodoc:
  include Interactor

  def call
    user = User.new(context.params)

    if user.save
      context.user = user
    else
      context.fail!(message: user.errors.full_messages)
    end
  end
end
