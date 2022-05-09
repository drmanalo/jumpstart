require 'rails_helper'

RSpec.describe Notification, type: :model do
  subject { create :notification }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  describe 'Association' do
    it { should belong_to :recipient }
  end
end
