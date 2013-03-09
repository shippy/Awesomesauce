require 'spec_helper'

describe "aliases/index" do
  before(:each) do
    assign(:aliases, [
      stub_model(Alias,
        :email => "Email",
        :user => "",
        :verified => false,
        :secret => "Secret"
      ),
      stub_model(Alias,
        :email => "Email",
        :user => "",
        :verified => false,
        :secret => "Secret"
      )
    ])
  end

  it "renders a list of aliases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Secret".to_s, :count => 2
  end
end
