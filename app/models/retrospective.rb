class Retrospective < ActiveRecord::Base
  has_many   :remediations
  belongs_to :incident

  validates :incident_id, :date, :description, presence: true
end
