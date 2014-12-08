class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  belongs_to :category

  has_many :pledges
  has_many :backers, through: :pledges, class_name: 'User'
  has_many :rewards

  accepts_nested_attributes_for :rewards,:reject_if => :all_blank, :allow_destroy => true 
  mount_uploader :picture, ProjectImageUploader

end
