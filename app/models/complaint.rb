class Complaint < ApplicationRecord
  belongs_to :user, inverse_of: :complaints

  validates :title, :description, presence: true
end
