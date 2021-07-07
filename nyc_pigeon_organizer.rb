def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, items|
    items.each do |feature, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute] << feature.to_s
      end
    end
  end
  return pigeon_list # write your code here!
end
