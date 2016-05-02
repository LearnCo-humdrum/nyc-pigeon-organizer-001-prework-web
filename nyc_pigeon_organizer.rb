def nyc_pigeon_organizer(data)
  # write your code here!
  birds = {}

  data.each do |stat_cat, stat_value_array|
    stat_value_array.each do |key2, value|
      value.each do |key|
        if birds.has_key?(key) == false
          birds["#{key.to_s}"] = {}
        end
        if birds["#{key.to_s}"].has_key?(stat_cat) == false
            birds["#{key.to_s}"][stat_cat] = []
        end
          birds["#{key.to_s}"][stat_cat].push(key2.to_s)
      end
    end
  end
  return birds
end