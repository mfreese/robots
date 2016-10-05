require 'erb'

class Robot
  attr_accessor :name

  def initialize(name)
      self.name = name
  end
  def say_hi
    "HI"
  end

  def say_name
    "My name is #{self.name}"
  end
end
class Bending_Unit < Robot

def bend(object_to_bend)
  "Bend #{object_to_bend} !!!!"
end
end
class Actor_Unit < Robot
  def change_name(change_name)
  self.name = change_name
  end
end



new_file = File.open("./index.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
