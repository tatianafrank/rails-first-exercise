class Project < ActiveRecord::Base
	def self.clean_old
		old=Project.where("created_at < ?", 1.week.ago)
		old.delete_all
	end
end
