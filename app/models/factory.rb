class Factory < ActiveRecord::Base
  validates :title, :presence => true
end
