require 'spec_helper'

describe "cutes/show" do
  before(:each) do
    @cute = assign(:cute, stub_model(Cute,
      :url => "Url",
      :type => "Type",
      :description => "MyText",
      :number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
