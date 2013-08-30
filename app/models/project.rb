class Project < ActiveRecord::Base
  attr_accessible :introduction, :pitch, :sub_title, :title

  has_many :sections

  has_many :users, through: :members
  has_many :members
  
  accepts_nested_attributes_for :sections

end
