def list_people(people)
  puts 'All people:'
  if people.length.positive?
    people.each_with_index do |person, index|
      begin
        puts "#{index + 1}-> Name: #{person.name.capitalize}, Age: #{person.age}, Student, Room: #{person.classroom} "
      rescue
        puts "#{index + 1}-> Name: #{person.name.capitalize}, Age: #{person.age}, Person is: Teacher"
      end
    end
  else
    puts 'No people in the school, create some.'
  end
  puts '-------------'
end
