class Project < ActiveRecord::Base
  attr_accessible :introduction, :pitch, :sub_title, :title

  has_many :sections
  
  accepts_nested_attributes_for :sections

end
