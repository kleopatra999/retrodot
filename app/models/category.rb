class Category < ActiveRecord::Base
  has_many :incidents
  belongs_to :incidents
end
