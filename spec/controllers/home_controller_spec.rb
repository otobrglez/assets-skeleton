require "spec_helper"

describe HomeController do
  render_views

  describe "GET /" do
    subject { get :index, format: :html }
    its(:status) { should == 200 }
  end

end

