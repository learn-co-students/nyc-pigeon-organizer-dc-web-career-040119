require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |category, data|
    data.each do |attribute, names|
      names.each do |name|
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(category)
            pigeon_list[name][category] << attribute.to_s
          else
            pigeon_list[name][category] = [attribute.to_s]
          end
        else
          pigeon_list[name] = {}
          pigeon_list[name][category] = [attribute.to_s]
        end
      end
    end
  end
  pigeon_list
end
