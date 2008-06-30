require 'bio'

class ToolsController < ApplicationController
  def index
  end

  def translation
  end

  def translate
    @seq = Bio::Sequence::NA.new(params[:seq])

    respond_to do |format|
      format.html
      format.js
    end
  end
end
