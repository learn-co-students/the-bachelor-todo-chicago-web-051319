require 'pry'
def get_first_name_of_season_winner(data, season)
  
  data[season].each do |k|
    k.each do |key, value|
      if key == "status" && value == "Winner" 
        return k["name"].split(" ").shift 
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |stats|
      stats.each do |key, value|
      if value == occupation
        return stats["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant|
    contestant.each do |stats|
      stats.each do |key, value|
      if value == hometown
        counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |stats|
      stats.each do |key, value|
      if value == hometown
        return stats["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = []
  data[season].each do |contestant|
    total_age << contestant["age"].to_i
  end
    average_age = total_age.reduce{|sum, x| sum + x} / total_age.length
end
