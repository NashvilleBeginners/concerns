require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "associations" do
    it { should belong_to :company }
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :company }
    it { should validate_presence_of :activated }
  end
end
