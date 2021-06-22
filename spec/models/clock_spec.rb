require 'rails_helper'

RSpec.describe Clock, type: :model do
  it { should belong_to(:user) }

  context 'check in time already exists' do
    let!(:user) { create(:user) }
    let(:clock) { create(:clock, check_in: 8.hours.ago, user_id: user.id) }

    it 'creates a sleep record and resets itself' do
      expect { clock.clock_in }.to change(SleepRecord, :count).by(1)
      expect(clock.check_in).to eq(nil)
    end
  end
end
