class Section < ActiveRecord::Base
  attr_accessible :info, :project_id, :title

  # Validations

  validates :title, presence: true, length: { minimum: 4, maximum: 100 }
  # validates :info, presence: false, length: { minimum: 140, maximum: 300 }

  # Associations

  belongs_to :project
end
