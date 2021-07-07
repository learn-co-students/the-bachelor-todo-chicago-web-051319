require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
    winner = ""
    data[season].each do |k, v|
      if k.values.include? ("Winner")
        winner << k["name"].to_s.split(" ")[0]
      end
    end
    p winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, attributes|
    attributes.each do |k1, v1|
      k1.each do |k, v|
        if v.include? occupation
          name << k1["name"]
        end
      # binding.pry
    end
  end
end
p name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, attributes|
    attributes.each do |k1, v1|
      k1.each do |k2, v2|
      if v2 == hometown
        counter += 1
      # binding.pry
      end
    end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  name = ""
  data.each do |season, attributes|
    attributes.each do |k1, v1|
      k1.each do |k, v|
        if v.include? hometown
          if name.length == 0
          name << k1["occupation"]
        end
        end
      # binding.pry
    end
  end
end
p name
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  num_of_contestants = data[season].count.to_f
  data[season].each do |attributes|

      counter += attributes["age"].to_f

    end
    final = counter / num_of_contestants
    final.round(0)
    # binding.pry
  end

#   counter
# end

#{season(contestant [attribute(data)])(contestant)}{season(contestant)(contestant)}
