class WlogsController < ApplicationController

  def index

  end

  def import1
    Wlog.import1(params[:file])
    redirect_to wlogs_path, notice: "Log Added successfully"
  end

end
