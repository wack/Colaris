class User < ActiveRecord::Base

# Include default devise modules. Others available are:
# :token_authenticatable, :confirmable,
# :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

# Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me , :firstn, :lastn, :profile_attributes
  validates :email, :password, :password_confirmation, :firstn, :lastn, :presence => true
  validates :email, :uniqueness => true
  has_one :profile
  accepts_nested_attributes_for :profile

  end