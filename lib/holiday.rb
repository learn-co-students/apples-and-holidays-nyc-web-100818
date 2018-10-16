#require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  # given that holiday_hash looks like this:
  # holiday_supplies = {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # # return the second element in the 4th of July array
    holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_supplies.each do |season, holidays|
      if season.to_s == "winter"
        holidays.each do |each_holiday, supplies|
          supplies << supply
        end
      end
    end
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  # holiday_supplies[:spring][:memorial_day][1] = supply

  holiday_supplies.each do |seasons, holidays|
    holidays.each do |holiday_name, supplies|
      if holiday_name.to_s == "memorial_day"
        supplies << supply
      end
    end
  end
end

###???
def add_new_holiday_with_supplies(holiday_supplies, season, new_holiday, supplies)
  # code here
  # remember to return the updated hash
  # holiday_supplies[season] = {holiday_name => supply_array}
  #
  # (holiday_supplies, season, holiday_name, supply_array)

  holiday_supplies[season][new_holiday] = supplies
  holiday_supplies # instructor confirmed it is ok to do this way.

    # the following still not working, but I want to by pass it for now.

    # holiday_supplies.each do |seasons, holidays|
    #   if seasons.to_s == season
    #     holiday_supplies[:seasons][:new_holiday] = supplies
    #   end
    #
    # end
    # holiday_supplies
end


def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  # winter_supplies_array = holiday_supplies[:winter][:christmas] + holiday_hash[:winter][:new_years]
  winter_supply_array = []
  holiday_supplies.each do |seasons, holidays|
    if seasons.to_s == "winter"
      holidays.each do |holiday, supplies|
        supplies.each do |supply|
          winter_supply_array << supply
        end

      end
    end

  end

  winter_supply_array
end


def all_supplies_in_holidays(holiday_supplies)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  # output the right format of holidays with proper case), and supplies.
  # output the right format of season.
  # split(' ').to_s.capitalize!).join(' ')
  holiday_supplies.each do |seasons, holidays|
    puts "#{seasons.capitalize}:"

      holidays.each do |each_holiday, supplies|

          # supply_array = []
          # supplies.each do |each_supply|
          #   supply_array << each_supply
          # end

        puts "  #{(each_holiday.to_s.split('_')).each{|i| i.capitalize!}.join(' ')}: #{supplies.join(", ")}"
      end
  end
end


def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_supplies.each do |seasons, holidays|
    holidays.each do |each_holiday, supplies|


      supplies.each do |each_supply|
        if each_supply == "BBQ"
          holidays_with_bbq.push(each_holiday)
        end

      end

    end

  end

  holidays_with_bbq # return format might be wrong

end
