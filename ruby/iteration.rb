def method
  puts "This happening before the block"
  yield
  puts "This is happening after the block"
end

method {puts "This is the block"}