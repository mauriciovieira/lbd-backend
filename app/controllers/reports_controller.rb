class ReportsController < ApplicationController

  def index
    respond_with Report.from_place(params[:place_id])
  end

end