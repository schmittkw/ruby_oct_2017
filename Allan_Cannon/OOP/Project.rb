class Project
  @name
  @description
  attr_accessor :name, :description
  def initialize name, description
    @name = name
    @description = description
    puts "Created project #{name}."
  end
  def elevator_pitch
    puts self.name + ', ' + self.description
  end
end

project1 = Project.new "Project 1", "Description 1"
puts project1.name
project1.elevator_pitch
