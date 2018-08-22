class UsersController < ApplicationController
  def show_current_user
    @student = Student.find_by(id: current_user.id)
    render "show_current_user.json.jbuilder"
  end
end
