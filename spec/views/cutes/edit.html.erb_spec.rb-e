require 'spec_helper'

describe "cutes/edit" do
  before(:each) do
    @cute = assign(:cute, stub_model(Cute,
      :url => "MyString",
      :type => "",
      :description => "MyText",
      :number => 1
    ))
  end

  it "renders the edit cute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cute_path(@cute), "post" do
      assert_select "input#cute_url[name=?]", "cute[url]"
      assert_select "input#cute_type[name=?]", "cute[type]"
      assert_select "textarea#cute_description[name=?]", "cute[description]"
      assert_select "input#cute_number[name=?]", "cute[number]"
    end
  end
end
