require "spec_helper"

RSpec.describe SolidusProductionLogs do
  it "has a version number" do
    expect(SolidusProductionLogs::VERSION).not_to be nil
  end
end
