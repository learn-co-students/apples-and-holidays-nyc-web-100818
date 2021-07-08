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
 holiday_hash[:winter].each do |holiday, supplies| #supplies is the second argu.
   supplies << supply
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day]<< supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  # remember to return the updated hash
holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten

end

require 'pry'
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#binding.pry
  holiday_hash.each do |season, holiday_pair|
    puts season.to_s.capitalize! + ":"   #outputs season: in capitalize => Winter:
    holiday_pair.each do |holiday, supply|   #iterate through holiday_pair and creates block of holidays and supply...
      puts "  #{holiday.to_s.split("_").collect {|x|  #interpolate holiday to string and split them while also omitting any _ then collects the whole array of holiday
                                                        #so #{holiday.to_s.split("_") results in " [\"christmas\"]" BUT the .collect |x| brings it into a block to do the next step..
      x.capitalize}.join(" ")}: #{supply.join(", ")}"   #x.capitalize -> takes the " [\"christmas\"]" block and capitalize's it. "[\"Christmas\"]" -> then joins(take away strings..) its as -> "Christmas"
                                                        # then supply joins into one big string while adding , in between each word.
  end
  end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  result = []     #create empty array since we need to only bring items from list and not key/pair values
    holiday_hash.each do |season, holiday|   #iterate through holiday_hash
      holiday.each do |holiday, supply| #checks values and goes through block
      result << holiday if supply.include?("BBQ") #pushes info that only includes "BBQ" in the "value/supply"
    end
  end
  result
end
