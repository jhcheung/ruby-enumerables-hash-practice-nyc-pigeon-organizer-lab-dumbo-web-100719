def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (quality, value)|
    value.each do |detail, value2|
      value2.times do |count|
        if !memo[value2[count]]
          memo[value2[count]] = {}
          memo[value2[count]][:quality] = []
          
        end 
      end 
    end 
  end 
end
