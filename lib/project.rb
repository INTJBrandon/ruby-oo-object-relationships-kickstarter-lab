require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new_backer = ProjectBacker.new(self, backer)
    end

    def backers
        backers_found = []
        ProjectBacker.all.select do |backers|
            if backers.project == self
               backers_found << backers.backer
            end
        end
        backers_found
    end
end