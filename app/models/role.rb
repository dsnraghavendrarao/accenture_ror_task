class Role < ApplicationRecord
	has_many :employees
	# has_one :reporter, class_name: "Role", foreign_key: :report_role_id
	validates_uniqueness_of :name
	before_destroy do
		reporte_role_id = Role.find_by_id(self.prior - 1)
		self.employees.update_all report_role_id: (report_role_id.try(:id))
		Role.where(prior: self.prior..Role.count).map{|role| role.update prior: (role.prior - 1)}
	end
	def response
		return self.employees
  	end
end
