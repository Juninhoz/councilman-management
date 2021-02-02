class ComplaintsController < ApplicationController
  def create
    user = User.all.first
    complaint_parameters = complaint_params.merge(user: user)
    Complaint.create(complaint_parameters)
  end

  private

  def complaint_params
    params.require(:complaint).permit(:title, :description)
  end
end
