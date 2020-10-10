require 'rails_helper'

RSpec.describe Complaint, type: :model do
  context 'relations' do
    it { should belong_to(:user) }
  end

  context 'validations' do
    describe '#title' do
      it { should validate_presence_of(:title) }
    end

    describe '#description' do
      it { should validate_presence_of(:description) }
    end
  end
end
