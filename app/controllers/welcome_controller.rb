class WelcomeController < ApplicationController
  def index

  end

  def home

  end

  def redirect
    redirect_to "http://www.rubyonrails.org"
  end
end
