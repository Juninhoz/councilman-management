class Complaint < ApplicationRecord
  belongs_to :user, inverse_of: :complaints
end
