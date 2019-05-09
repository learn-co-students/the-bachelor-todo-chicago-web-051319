require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |season_num, info|
    if season_num == season
      info.each do |contestant|
        if contestant.values.last == "Winner"
          winner = contestant.values.first
          return winner.split.shift
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, info|
    info.each do |contestant|
      if contestant.values[3] == occupation
        return contestant.values.first
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num, info|
    info.each do |contestants|
      if contestants.values.detect{|h| h == hometown}
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_num, info|
    info.each do|contestants|
      if contestants.values.find{|h| h == hometown}
        return contestants.values[3]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  empty_array = []
  count = 0
  data.each do |season_num, info|
    if season_num == season
      info.each do |contestants|
        empty_array << contestants.values[1].to_i
        count += 1
      end
    end
  end
  average = empty_array.inject{|x, y| x + y}.to_f
  averages = average / count
  empty_array.size
  averages.round
end
