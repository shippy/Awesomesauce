require 'spec_helper'

describe "aliases/show" do
  before(:each) do
    @alias = assign(:alias, stub_model(Alias,
      :email => "Email",
      :user => "",
      :verified => false,
      :secret => "Secret"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/Secret/)
  end
end
