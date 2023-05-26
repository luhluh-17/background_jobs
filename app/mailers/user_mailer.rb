class UserMailer < ApplicationMailer
  def email
    @greeting = 'Hi'
    sleep 5
    mail to: 'to@example.org'
  end
end
