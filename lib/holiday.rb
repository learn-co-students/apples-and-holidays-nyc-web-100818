require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  party_hats = holiday_hash[:winter][:new_years].join
  holiday_hash[:winter][:christmas] << party_hats
  # binding.pry
end


# iterate through holiday_hash and puts out items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    string_season = season.to_s
    cap_season = string_season.capitalize!
    puts "#{cap_season}:"
    data.each do |holiday, supplies|
      string_holiday = holiday.to_s
      holiday_array = string_holiday.split('_')
      holiday_array.each do |word|
        word.capitalize!
      end

    holiday_string = holiday_array.join(" ")
    supplies_string = supplies.join(", ")

    puts "  #{holiday_string}: #{supplies_string}"
      end
  end
# binding.pry
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_array << holiday
      end
    end
  end

  # bbq_key = nil
  # bbq_key2 = nil
  # holiday_hash[:summer].each do |key, value|
  #   if value.include?("BBQ")
  #     bbq_key = key
  #   end
  # end
  #
  # holiday_hash[:spring].each do |key, value|
  #   if value.include?("BBQ")
  #     bbq_key2 = key
  #   end
  # end
  #
  # array = []
  # array << bbq_key
  # array << bbq_key2
# binding.pry

bbq_array
end
