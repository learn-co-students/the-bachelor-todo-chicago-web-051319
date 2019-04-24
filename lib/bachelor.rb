def get_first_name_of_season_winner(data, season)
  # code here
  index = 0
  
  data[season].each do |contestant_index|
    contestant_index.each do |infoKey , infoVal|
      if infoKey == "status" && infoVal == "Winner"
        index = contestant_index["name"].to_s
        index = index.split(" ")
        index = index[0]
      end
    end
  end

  return index
end

def get_contestant_name(data, occupation)
  # code here
  a = ""
  data.each do |season , seasonInfo|
    seasonInfo.each do |contestant|
      contestant.each do |infoKey , infoVal|
        if infoKey == "occupation" && infoVal == occupation
       #   puts "winner found"
          a = contestant["name"].to_s
        end
      end
    end
  end
  
  puts a
  return a
end

def count_contestants_by_hometown(data, hometown)
  # code here
  a = 0
  data.each do |season , seasonInfo|
    seasonInfo.each do |contestant|
      contestant.each do |infoKey , infoVal|
        if infoKey == "hometown" && infoVal == hometown
          a += 1
        end
      end
    end
  end
  
  return a
end

# so something here is weird
def get_occupation(data, hometown)
  a = ""
  data.each do |season , seasonInfo|
    seasonInfo.each do |contestant|
     
      contestant.each do |k , v|
        if k == "hometown" && v == hometown
          a = contestant["occupation"].to_s
          puts "#{contestant[:name]} is a #{a}"
          return a
          #break
        end
      end
      
    end
    
  end
  # code here
  #return a
end

def get_average_age_for_season(data, season)
  # code here
  arr = []
  
  data[season].each do |contestant|
    contestant.each do |k , v|
      if k == "age"
        arr.push(v)
      end
    end
  end
  
  sum = 0
  nums = 0
  arr.each do |i|
    sum += i.to_i
    nums += 1
  end
  
  a = sum.to_f / nums.to_f
  temp = a.ceil
  if (a - temp) > -0.5
    #puts "#{a} - #{temp} < 0 , ciel this (#{a - temp})"
    return temp
  else
    #puts "#{a} - #{temp} < 0 , floor this (#{a - temp})"
    return a.floor
  end
  
  
  
end
