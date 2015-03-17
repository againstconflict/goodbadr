class Thing < ActiveRecord::Base

  has_many :users, :through => :ratings
  has_many :ratings

  # validates_uniqueness_of :name

end