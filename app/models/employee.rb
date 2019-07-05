class Employee < ApplicationRecord
  belongs_to :role
  # has_one :reportee, class_name: "Employee", foreign_key: :report_role_id
  validates :salary, numericality: true
  validates :name,:salary,:rating,:role_id, presence: true
  validate  :validate_correct_reporter
  # PRE_DEFINED_ROLE_PRIORS = [{name: "CEO", prior: 5},{name: "VIP", prior: 4},{name: "Director",prior: 3},{name: "Manager",prior: 2},{name: "SDE", prior: 1}]
  def reporter
  	return Role.find_by_id(self.report_role_id).try(:name)
  end


private
	def validate_correct_reporter
		role_prior = Role.find_by(id: self.role_id).try(:prior)
		report_prior = Role.find_by(id: self.report_role_id).try(:prior)
    unless role_prior == 1 || (role_prior-1) == report_prior  
      errors.add(:report_role_id, "Please Select reporter id based on Hierarchy")
    end
	end
end



