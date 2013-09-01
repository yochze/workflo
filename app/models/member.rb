class Member < ActiveRecord::Base
	attr_accessible :user_id, :project_id, :role, :admin

	belongs_to :user
	belongs_to :project
end
