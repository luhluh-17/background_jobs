class TestJob < ApplicationJob
  queue_as :default

  def perform(user)
    "Hello #{user.name}!"
  end
end
