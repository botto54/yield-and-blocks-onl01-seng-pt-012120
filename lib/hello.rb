def hello_t
  if block_given?
      i = 0
   while i < array.length
      yield array[i]
      i += 1 
   end
  array 
  else
    puts "Hey! No block was given!"
  end
end

#call the method
hello_t(["Tim", "Tom", "Jim"]) do |name| #parameter for array[i] from yield
   if name.start_with?("T")
      puts "Hi, #{name}"
   end
end