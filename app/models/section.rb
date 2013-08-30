class Section < ActiveRecord::Base
  attr_accessible :info, :project_id, :title

  belongs_to :project
end
