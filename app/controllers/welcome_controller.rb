class WelcomeController < ApplicationController
  def index


    if params[:date1].present?

        @date = params[:date1]
        date=DateTime.parse(@date)
        date1= date + 20.minutes
        @sdata  =Wlog.where('Time <= ? and Time >= ?', date1, date).where("rt> 1 AND methods='GET'").order("RT DESC")
        @data  =Wlog.group(:Time).where('Time <= ? and Time >= ?', date1, date).count
        @data6= Wlog.group(:Methods).where('Time <= ? and Time >= ?', date1, date).average(:rt)

        @data4= Wlog.group(:Time).where('Time <= ? and Time >= ?', date1, date).average(:rt)
        @apdex=  Wlog.apdex(date,date1)
     else

       #@apdex= Wlog.apdex()
       #@data4= Wlog.group(:Time).where("rt >= 3").count
      # @data3 =Wlog.group(:Time).average(:rt)
      # @data  =Wlog.group(:Time).count
    #   @data5=Wlog.where("rt> 5 AND methods='GET'").order("RT DESC").first(10)
      # @data6= Wlog.group(:Methods).average(:rt)
    #   @data7= Wlog.group(:status).count()
    end








  end

  def home


  end


end
