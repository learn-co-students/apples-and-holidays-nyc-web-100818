require 'pry'

my_holidays = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name.to_sym => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect{|k,v| v}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |k,v|
      puts "  #{k.to_s.split("_").each{|x| x.capitalize!}.join(" ")}: " + v.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbqs = []
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, supply|
      bbqs.push(holiday) if supply.include?("BBQ")
    end
  end
  bbqs
end
