class HomeController < ApplicationController
  def index
    @venues = Venue.limit(10)
  end

  def results

    if params.has_key?(:results)

    #@results = Venue.joins(:offers).where("offers.offertype = '2-4-1'")

    @finddate = (params[:results][:date]).to_date
    @findtime = (params[:results][:time]).to_time
    @resultsdate = DateTime.new(@finddate.year,@finddate.month,@finddate.day,@findtime.hour)

    if params[:results][:vtype] == 'Anywhere'

    @results = Venue.joins(:offers).where(["DATE(offers.start) = ? and EXTRACT(hour FROM offers.end) >= ?", @finddate , @findtime.strftime('%H')])

    else

    @results = Venue.joins(:offers).where(["venues.vtype = ? and DATE(offers.start) = ? and EXTRACT(hour FROM offers.end) >= ?", params[:results][:vtype], @finddate , @findtime.strftime('%H')])

    end

  elsif params.has_key?(:@results)

    @finddate = (params[:@results][:date]).to_date
    @findtime = (params[:@results][:time]).to_time
    @resultsdate = DateTime.new(@finddate.year,@finddate.month,@finddate.day,@findtime.hour)

    if params[:@results][:vtype] == 'Anywhere'

    @results = Venue.joins(:offers).where(["DATE(offers.start) = ? and EXTRACT(hour FROM offers.end) >= ?", @finddate , @findtime.strftime('%H')])


    else

      @results = Venue.joins(:offers).where(["venues.vtype = ? and DATE(offers.start) = ? and EXTRACT(hour FROM offers.end) >= ?", params[:@results][:vtype], @finddate , @findtime.strftime('%H')])

    end


  else

    @results = Venue.joins(:offers).where(["offers.start = ?", Date.today])

    #@results = Venue.joins(:offers).where("offers.offertype = '2-4-1'")

    end

  end


private

  def results_params
    params.require(:results_params).permit(:start, :offertype, :vtype, :date, :time)
  end

end
