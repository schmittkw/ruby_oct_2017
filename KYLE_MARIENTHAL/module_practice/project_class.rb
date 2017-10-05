# Assignment: Project
# Create a Project Class that has the following attributes: name, description. Also, create a instance method called elevator_pitch that will print out the name of the project and its description separated by a comma.
class Project
  @@no_of_projects = 0
  def initialize(name, description)
    @project_name = name
    @project_description = description
    @@no_of_projects += 1
    puts "youve created project number #{@@no_of_projects}"
  end

  def project_name
    @project_name
  end



  def elevator_pitch#prints name of project and its description
    puts "Project Name: #{@project_name}, description: #{@project_description}"
  end

end
project1 = Project.new("Project 1", "Description 1")
puts project1.project_name
project1.elevator_pitch
