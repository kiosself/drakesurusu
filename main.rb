current_path = File.dirname(__FILE__)
t = Time.now
hour = t.hour

count = 0

while File.exist?(current_path + "/questions/#{count}.txt")

  puts current_quest = File.readlines(current_path + "/questions/#{count}.txt", :encoding => 'UTF-8')
  user_choice = STDIN.gets.chomp
  current_answer = File.readlines(current_path + "/answers/#{count}_answ.txt", :encoding => 'UTF-8').flatten
  puts
  if user_choice == '2'

    if count == 4
      puts current_answer[0].to_s
    else
      abort current_answer[0].to_s
    end

  elsif user_choice == '1'
    puts current_answer[1].to_s

  elsif count == 5 && user_choice == "kill"
    puts current_answer[2].to_s

  else
    abort "Error."
  end

  count += 1

end

current_answer = File.readlines(current_path + "/questions/finale.txt", :encoding => 'UTF-8')
puts
puts current_answer[0].to_s

if hour > 16
  puts
  abort current_answer[1].to_s
else
  puts
  puts current_answer[2].to_s
end

puts
puts "Конец первой части. \nПоздравляю, вы пока живы."