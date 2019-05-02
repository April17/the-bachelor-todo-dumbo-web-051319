require "pry"
#select season
#looping array
#find Value "Winner"
#return that hash's "name" Value
def get_first_name_of_season_winner(data, season)
  # code here
  aryHolder = []
  hashHolder = {}
  aryHolder = data.fetch (season)
  hashHolder = aryHolder.find {|a| a["status"] == "Winner"}
  return hashHolder["name"].split(" ")[0].to_s
end

def get_contestant_name(data, occupation)
  # code here
  hashHolder = {}
  data.collect do |season, ary|
    hashHolder = ary.find {|a| a["occupation"] == occupation}
    if hashHolder != nil
      return hashHolder["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hashHolder = {}
  counter = 0
  data.collect do |season, ary|

    for i in 0...ary.length
      if ary[i]["hometown"] == hometown
        counter += 1
      end
    end
  end

    hashHolder = ary.find {|a| a["hometown"] == hometown}
    if hashHolder != nil
      counter += 1
    end
    binding.pry
  end


  return counter
end

def get_occupation(data, hometown)
  # code here
  hashHolder = {}
  data.collect do |season, ary|
    hashHolder = ary.find {|a| a["hometown"] == hometown}
    if hashHolder != nil
      return hashHolder["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  aryHolder = []
  totalAge = 0
  aryHolder = data.fetch (season)
  for i in 0...aryHolder.length
    totalAge += aryHolder[i]["age"].to_f
  end
  return (totalAge / aryHolder.length).round
end
