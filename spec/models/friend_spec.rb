require 'rails_helper'

RSpec.describe Friendship, type: :model do
  describe 'Validations' do
  end
  describe 'Relationships' do
    it { should belong_to :friendships}
    it { should belong_to :friend}
  end
end
