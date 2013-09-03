class Project < ActiveRecord::Base
  attr_accessible :introduction, :pitch, :sub_title, :title, :user_id

  # Validations
  # Later.


  # Associations

  has_many :sections, :dependent => :destroy

  has_many :users, through: :members
  has_many :members, :dependent => :destroy

  belongs_to :user
  
  accepts_nested_attributes_for :sections


  # Actions

  after_create :add_creator_as_project_member
  after_create :add_initial_section


  def add_creator_as_project_member
    user_id = self.user_id
  	self.members.create(
  			user_id: user_id,
  			role: 'Co-Founder',
  			admin: true )
  end

  def add_initial_section
    self.sections.create(
      title: 'Planning',
      info: 'Planning is the most important stage!'
      )
  end

end
