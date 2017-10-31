module HomeHelper

  def dates_for_search_select
      [[(Date.today),'Today'], [(Date.today + 1.day),'Tomorrow'], [(Date.today + 2.days),(Date.today + 2.days).strftime("%a %d %B")], [(Date.today + 3.days),(Date.today + 3.days).strftime("%a %d %B")], [(Date.today + 4.days),(Date.today + 4.days).strftime("%a %d %B")], [(Date.today + 5.days),(Date.today + 5.days).strftime("%a %d %B")], [(Date.today + 6.days),(Date.today + 6.days).strftime("%a %d %B")]]
  end

  def times_for_search_select

    24.times.collect do |n|
    [((Time.now + n.hours).beginning_of_hour),(Time.now + n.hours).strftime("%-I %p")]
    end


  end

end
