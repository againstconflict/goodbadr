class Rating < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :thing
  
  # validates_boolean :rating
  
end