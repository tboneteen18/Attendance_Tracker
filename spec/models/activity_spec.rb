require 'rails_helper'

RSpec.describe Activity, type: :model do
  before(:each) do
    @activity = Activity.create!(name: 'Band')
  end

  it "returns the activity name" do
    @activity.name
    expect(@activity.name).to eq("#{@activity.name}")
  end

end
