class Project < ActiveRecord::Base
	has_many :entries

	def self.clean_old
		old=Project.where("created_at < ?", 1.week.ago)
		old.delete_all
	end

	def self.last_created_projects(the_limit)
		order(created_at: :desc).limit(the_limit)
	end

	def total_hours_in_month(month, year)
    	the_date = DateTime.new(year, month)
    	all_entries = entries.where(date: the_date.beginning_of_month..the_date.end_of_month)
     	all_entries.reduce(0) { |total_hours, entry| total_hours + entry.hours }
    end


end
