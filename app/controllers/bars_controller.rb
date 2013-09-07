class BarsController < ApplicationController

  def index
    respond_with Bar.all
  end

end