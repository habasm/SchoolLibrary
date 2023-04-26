require 'pry'

class PersonStorage
  def self.save(people)
    all_people = people.map do |person|
      if person.instance_of?(::Student)
        { id: person.id, age: person.age, name: person.name, permission: person.parent_permission, type: person.class }
      else
        { id: person.id, name: person.name, age: person.age, specialization: person.specialization, type: person.class }
      end
    end

    File.write('./data/people.json', JSON.generate(all_people))
  end

  def self.people
    people = []
    if File.exist?('./data/people.json')
      JSON.parse(File.read('./data/people.json')).map do |person_hash|
        case person_hash['type']
        when 'Student'
          new_student = Student.new(person_hash['age'], person_hash['id'], person_hash['name'], person_hash['id'],
                                    parent_permission: person_hash['parent_permission'])
          people.push(new_student)
        when 'Teacher'
          new_teacher = Teacher.new(person_hash['age'], person_hash['specialization'], person_hash['name'],
                                    person_hash['id'])
          people.push(new_teacher)
        end
      end
    end
    people
  end
end
