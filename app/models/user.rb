class User < ActiveRecord::Base
  
  # Default devise settings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:github]


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name

  # omniauth stuff 
  attr_accessible :github_uid

  # attr_accessible :title, :body
  has_many :projects, through: :members
  has_many :members

  has_many :projects

def self.create_from_omniauth(omniauth)
  User.new.tap do |user|
    user.github_uid = omniauth["uid"]
    user.name = omniauth["info"]["nickname"]
    user.email = omniauth["info"]["email"]
    user.password = Devise.friendly_token[0,20]
    user.save!
  end
end

end
