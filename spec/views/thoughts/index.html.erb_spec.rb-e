require 'spec_helper'

describe "thoughts/index" do
  before(:each) do
    assign(:thoughts, [
      stub_model(Thought,
        :body => "Body",
        :user => nil
      ),
      stub_model(Thought,
        :body => "Body",
        :user => nil
      )
    ])
  end

  it "renders a list of thoughts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
