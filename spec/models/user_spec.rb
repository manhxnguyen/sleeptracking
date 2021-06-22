require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:sleep_records).dependent(:destroy) }
  it { should have_one(:clock).dependent(:destroy) }
  it { should have_many(:followers).through(:followee_relationships) }
  it { should have_many(:followees).through(:follower_relationships) }
end
