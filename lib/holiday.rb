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
  holiday_hash.each do |key, value|
     if key == :summer
    value.each do |key1, value1|
        if key1 == :fourth_of_july
          return value1[1]
    end
    end
end
  end
  end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # Write a method that adds a new holiday and its associated supplies to any season
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  new_array = []
 array << holiday_hash[:winter][:christmas]
 array << holiday_hash[:winter][:new_years]
array.each do |x|
  x.each do |y|
    new_array << y
  end
end
new_array
end


def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, supplies|
    puts"  #{holiday.to_s.split('_').map{|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"

  end
  end
  end









def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
holiday_hash[:summer].each do |holiday, supplies|
  array << holiday
end

  holiday_hash[:spring].each do |holiday, supplies|
    array << holiday
  end
  array
end
