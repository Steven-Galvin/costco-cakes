module Authorizations
  def is_admin
    current_user && current_user.admin
  end

  def is_employee
    current_user && (current_user.employee || current_user.employee)
  end
end
