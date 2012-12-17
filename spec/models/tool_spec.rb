require 'spec_helper'

describe Tool do

  describe "structure" do
    subject { Tool.new }
    it { should respond_to :name, :url }
  end

  describe "to string" do
    subject { Tool.new name: "Test" }
    its(:to_s) { should eq "Test" }
  end

  describe "validation" do
    let(:tool) { Tool.new }
    before { tool.valid? }
    describe "name" do
      subject { tool.errors[:name] }
      it { subject[0].should match(/blank/) }

      describe "uniqueness" do
        before { create :rails }
        subject do
          r = build :rails
          r.valid?
          r
        end
        it { should be_invalid }
        its("errors.first") { should include :name }
      end
    end
    describe "url" do
      subject { tool.errors[:url] }
      it { subject[0].should =~ /blank/ }
      it { subject[1].should =~ /invalid/ }
    end
  end

end
