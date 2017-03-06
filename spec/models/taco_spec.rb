require 'rails_helper'

RSpec.describe Taco, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:uri) }
  it { should validate_presence_of(:price) }
end
