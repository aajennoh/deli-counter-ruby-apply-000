def line(katz_deli)
  if katz_deli.empty? #boolean to determine whether or not statement is true
    puts "The line is currently empty."
  else
    new_array = [ ] #.each won't modify the original array, so you have to push the values you create into a new array
    number = 1 #counter starting at 1
    katz_deli.each do |customer|
      new_array << "#{number}. #{customer}" #for each loop, set the customer and associated number into the new array. basically repeat until last customer
      number += 1 #for each loop, increase counter by 1 and the next loop will have the next number with the next customer
    end
    puts "The line is currently: #{new_array.join(" ")}"
    #.join will exclude all of the fluff between each new_array
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name #adding the customer to the end of the line
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
