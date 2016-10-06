require 'erb'

class Robot
    attr_accessor :name

    def initialize(name)
        self.name = name
    end
    def say_hi
        'HI'
    end
    def say_name
        "My name is #{name}"
    end
end
class BendingUnit < Robot
    def bend(object_to_bend)
        "Bend #{object_to_bend} !!!!"
    end
end
class ActorUnit < Robot
    def change_name(change_name)
        self.name = change_name
    end
end
robot_name=ARGV[0]
new_object=BendingUnit.new(ARGV[0])
bend=ARGV[1]
new_file = File.open("./#{robot_name}.html", 'w+')
new_file << ERB.new(File.read('index.html.erb')).result(binding)
new_file.close
