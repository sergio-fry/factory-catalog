class Factory < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :category
end
