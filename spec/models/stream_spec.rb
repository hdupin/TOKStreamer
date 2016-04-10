require 'rails_helper'

RSpec.describe Stream, type: :model do
  context "validations" do
    it "requires user to be set" do
      stream = FactoryGirl.build(:stream, user: nil)
      expect(stream.tap(&:valid?).errors[:user].size).to eql(1)
    end

    it "requires session_id to be set" do
      stream = FactoryGirl.build(:stream, session_id: nil)
      expect(stream.tap(&:valid?).errors[:session_id].size).to eql(1)
    end

    it "requires title to be set" do
      stream = FactoryGirl.build(:stream, title: nil)
      expect(stream.tap(&:valid?).errors[:title].size).to eql(1)
    end
  end

end
