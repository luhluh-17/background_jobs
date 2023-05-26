class TestJob < ApplicationJob
  queue_as :default

  def perform(name)
    "Hello #{name}!"
  end
end
