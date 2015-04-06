class Project < ActiveRecord::Base
	def self.clean_old
		old=Project.where("created_at < ?", 1.week.ago)
		old.delete_all
	end

	def self.last_created_projects(the_limit)
		order(created_at: :desc).limit(the_limit)
	end

end
