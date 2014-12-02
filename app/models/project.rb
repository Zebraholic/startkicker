class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  belongs_to :category
  has_many :backers, through: :pledges, class_name: 'User'
  has_many :rewards
  
end
