class HomeController < ApplicationController
  def index
    @venues = Venue.limit(10)
  end

  def results

    if params.has_key?(:@results)

       @resultsparams = params[:@results]

    elsif params.has_key?(:results)

       @resultsparams = params[:results]

    end

    #@results = Venue.joins(:offers).where("offers.offertype = '2-4-1'")

    @finddate = (@resultsparams[:date]).to_date
    @findtime = (@resultsparams[:time]).to_time
    @resultsdate = DateTime.new(@finddate.year,@finddate.month,@finddate.day,@findtime.hour)

    if @resultsparams[:vtype] == 'Anywhere'

    @results = Venue.joins(:offers).where(["venues.region = ? AND  DATE(offers.start) = ? and EXTRACT(hour FROM offers.end) >= ?", @resultsparams[:where], @finddate , @findtime.strftime('%H')])

    else

    @results = Venue.joins(:offers).where(["venues.region = ? AND venues.vtype = ? and DATE(offers.start) = ? and EXTRACT(hour FROM offers.end) >= ?", @resultsparams[:where] , @resultsparams[:vtype], @finddate , @findtime.strftime('%H')])

    end


  end


private

  def results_params
    params.require(:results_params).permit(:start, :offertype, :vtype, :date, :time)
  end

end
