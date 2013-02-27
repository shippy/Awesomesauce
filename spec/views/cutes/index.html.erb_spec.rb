require 'spec_helper'

describe "cutes/index" do
  before(:each) do
    assign(:cutes, [
      stub_model(Cute,
        :url => "Url",
        :type => "Type",
        :description => "MyText",
        :number => 1
      ),
      stub_model(Cute,
        :url => "Url",
        :type => "Type",
        :description => "MyText",
        :number => 1
      )
    ])
  end

  it "renders a list of cutes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
