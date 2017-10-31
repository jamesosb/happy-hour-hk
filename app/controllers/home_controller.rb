class HomeController < ApplicationController
  def index
    @venues = Venue.limit(10)
  end

  def results

    @results = Venue.joins(:offers).where("offers.offertype = '2-4-1'")

  end


private

  def search_params
    params.require(:search_params).permit(:start, :offertype, :vtype)
  end

end
