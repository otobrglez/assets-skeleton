require 'spec_helper'

describe Tool do
  describe "structure" do
    subject { Tool.new }
    it{ subject.name.should be_nil }
    it{ subject.url.should be_nil }
    it{ should be_invalid }
  end
  describe "validation" do
    subject { Tool.new }
    before { subject.valid? }
    it { subject.errors["name"].size.should eq 1 }
    it { subject.errors["url"].size.should eq 2 }

    describe "url" do
      before do
        subject.url = "test"
        subject.valid?
      end
      it { subject.errors["url"].first.should =~ /invalid/ }
    end
  end

  describe "namespace and slug" do
    subject { Tool.new name: "this is my slug" }
    its(:to_param){ should eq "this-is-my-slug" }
    its(:ns){ should eq "tools:this-is-my-slug" }
  end

  describe "saving one " do
    before { $redis.flushdb }
    subject { build :rails }
    its(:save){ should_not be_false }
  end

  describe "saving many" do
    let(:list) {
      unsaved = [(build :rails),(build :backbone),(build :underscore)]
      unsaved.map(&:save)
      unsaved
    }

    it { list.size.should eq 3 }

  end

  describe "listing" do

  end
end
