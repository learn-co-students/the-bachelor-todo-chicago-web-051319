#{seasons:[{contestants}] contestants= {stats:values}

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants| #array of contestants
    if contestants["status"] == "Winner"
          return contestants["name"].split.first 
        end
      end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |info|
    if info["occupation"] == occupation 
      return info["name"]
    end 
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        i += 1 
      end
      end
    end
    i
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |info|
    if info["hometown"] == hometown
      return info["occupation"]
    end
    end
  end
end



def get_average_age_for_season(data, season)
  total_age = 0
  i = 0
  data[season].each do |contestants|
    contestants.each do |info, values|
      i += 1
      total_age += contestants["age"].to_f
    end
  end
    (total_age/i).round
end
