require 'spec_helper'

describe "cutes/new" do
  before(:each) do
    assign(:cute, stub_model(Cute,
      :url => "MyString",
      :type => "",
      :description => "MyText",
      :number => 1
    ).as_new_record)
  end

  it "renders new cute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cutes_path, "post" do
      assert_select "input#cute_url[name=?]", "cute[url]"
      assert_select "input#cute_type[name=?]", "cute[type]"
      assert_select "textarea#cute_description[name=?]", "cute[description]"
      assert_select "input#cute_number[name=?]", "cute[number]"
    end
  end
end
