require 'spec_helper'

describe "aliases/new" do
  before(:each) do
    assign(:alias, stub_model(Alias,
      :email => "MyString",
      :user => "",
      :verified => false,
      :secret => "MyString"
    ).as_new_record)
  end

  it "renders new alias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aliases_path, "post" do
      assert_select "input#alias_email[name=?]", "alias[email]"
      assert_select "input#alias_user[name=?]", "alias[user]"
      assert_select "input#alias_verified[name=?]", "alias[verified]"
      assert_select "input#alias_secret[name=?]", "alias[secret]"
    end
  end
end
