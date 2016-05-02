class User < ActiveRecord::Base
  
  has_many :microposts
  validates :name, presence:true
   validates :email, presence: true
   validates_uniqueness_of :name, :message => "already exists"
   validates_uniqueness_of :email, :message => "already exists"
   
   EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
   validates_format_of :email, :with => EMAIL_REGEX
   validates_length_of :email, :maximum => 100
   validates_length_of:name, :within => 8..25
  
end
