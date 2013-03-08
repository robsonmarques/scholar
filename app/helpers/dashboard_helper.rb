module DashboardHelper

  def active_for(scope, first = false)
    "active in" if params.has_key?(scope) || (params.count == 2 && first)
  end

  def empty_list(resource)
    resource.empty? && params.count == 2
  end

end
