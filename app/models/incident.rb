class Incident < ActiveRecord::Base
  has_many :retrospectives
  has_many :remediations, through: :retrospectives

  validates :title, presence: true
end
