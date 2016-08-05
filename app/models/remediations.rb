class Remediation < ActiveRecord::Base
  belongs_to :incident
  has_one    :incident, through: :retrospective
  belongs_to :retrospective
end
