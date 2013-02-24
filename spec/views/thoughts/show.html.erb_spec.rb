require 'spec_helper'

describe "thoughts/show" do
  before(:each) do
    @thought = assign(:thought, stub_model(Thought,
      :body => "Body",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Body/)
    rendered.should match(//)
  end
end
