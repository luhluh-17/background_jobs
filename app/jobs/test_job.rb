class TestJob < ApplicationJob
  queue_as :default

  rescue_from(ActiveRecord::RecordNotFound) do
    puts 'Record not found'
  end

  retry_on(ActiveRecord::RecordNotFound, wait: 1.second, attempts: 3) do
    # your handling logic in here
  end

  discard_on(ActiveRecord::RecordNotFound) do
    # your handling logic in here
  end

  def perform(user)
    "Hello #{user.name}!"
  end
end
