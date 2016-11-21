def block_method
  p "Block has not run yet."
  name1 = "Bob"
  name2 = "Steve"
  yield(name1, name2)
end
block_method { |name1, name2| puts "So good to see you #{name2} and #{name1}!" }

yarn = [ 'acrylic', 'wool', 'bamboo', 'silk']


yarn_hash = {
  :acrylic => "worsted",
  :wool => "aran",
  :bamboo => "sport",
  :silk => "fingering"
}

p yarn
p yarn_hash


yarn.map! {|type| type.upcase}

yarn_hash.each do |type, weight|
  p "You have #{weight} kind of yarn in #{type} fiber."
end

p yarn
p yarn_hash