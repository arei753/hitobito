class DashboardController < ApplicationController
  
  skip_authorization_check only: :index
  
  def index
    redirect_to group_person_path(current_user.groups.first, current_person)
  end
end