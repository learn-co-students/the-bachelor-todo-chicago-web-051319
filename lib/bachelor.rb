def get_first_name_of_season_winner(data, season)
# return the first name of winner when given a season, requires string manipulation to get just the first name
  #  flow control wise we are going to look for season equivalence, and each method to iterate through all our keys
  data[season].each do | individual_hash |
    if individual_hash["status"].downcase == "winner"
      return individual_hash["name"].split(" ").first
    end
  end
end
 
def get_contestant_name(data, occupation)
  # takes in an occupation and returns the contestant name that has that occupation
  data.each do | season, contestant | 
    contestant.each do | individual_hash |
      if individual_hash["occupation"] == occupation
        return individual_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  # needs to iterate over data and count the number of contestants from a particular hometown
  data.each do | season, contestant | 
    contestant.each do | individual_hash |
      if individual_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # it returns the occupation of the first contestant that comes from a particular hometown
  data.each do | season, contestant | 
    contestant.each do | individual_hash |
      if individual_hash["hometown"] == hometown
        return individual_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # iterate down to where we need to get the info
  # we must collect and average by converting the strings into integers
  # use to_f so that we get decimals when we use divison 
  age_sum = 0
  contestant_count = 0
  data[season].each do | individual_hash |
    age_sum += individual_hash["age"].to_i
    contestant_count += 1
  end
  (age_sum / contestant_count.to_f).round(0)
end

  
