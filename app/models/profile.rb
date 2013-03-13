class Profile < ActiveRecord::Base
  attr_accessible :addressl1, :addressl2, :city, :comp_pos, :company, :country, :p_statement, :state, :type, :zip , :user_id

  belongs_to :user


end
