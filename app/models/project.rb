class Project < ActiveRecord::Base
  attr_accessible :introduction, :pitch, :sub_title, :title

  has_many :sections, :dependent => :destroy

  has_many :users, through: :members
  has_many :members, :dependent => :destroy
  
  accepts_nested_attributes_for :sections


  def add_creator_as_project_member(user_id)
  	Member.create(
  			user_id: user_id,
  			project_id: self.id,
  			role: 'Co-Founder',
  			admin: true
  		)
  end

end
