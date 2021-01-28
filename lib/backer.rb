require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        backed = ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_found = []
        ProjectBacker.all.select do |projects|
            if projects.backer == self
               projects_found << projects.project
            end
        end
        projects_found
    end
end