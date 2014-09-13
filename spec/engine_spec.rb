require "spec_helper"

describe ActAsDeleted::Base do
  describe "hook method .act_as_deleted" do
    subject { Object.respond_to?(:act_as_deleted) }

    context "without include module" do
      it { should be_falsey }
    end

    context "include module" do
      before(:each) { Object.send :include, ActAsDeleted::Base }

      it { should be_truthy }
    end
  end
end