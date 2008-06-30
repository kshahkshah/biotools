class MenuController < ApplicationController
  def view
    respond_to do |format|
#      format.html
      format.js
    end
  end
end