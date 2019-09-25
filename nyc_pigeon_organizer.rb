def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (quality, value)|
    value.each do |detail, value2|
      value2.times do |count|
        if !memo[value2[count]]
          memo[value2[count]] = {}
          memo[value2[count]][quality] = []
          memo[value2[count]][quality].push(detail.to_s)
        else 
          memo[value2[count]][quality].push(detail.to_s)
        end 
      end 
    end 
    memo
  end 
end
