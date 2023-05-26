class SiteController < ApplicationController
  def index
    UserMailer.email.deliver_later
  end
end
