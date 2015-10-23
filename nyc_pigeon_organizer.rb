require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attr, data1|
    data1.each do |data2, names|
      names.each do |name|
        new_hash[name] = {} if new_hash[name].nil?
        new_hash[name][attr] = new_hash[name][attr].nil? ? [data2.to_s] : new_hash[name][attr] + [data2.to_s]
        p new_hash
      end
    end
  end
  new_hash
end