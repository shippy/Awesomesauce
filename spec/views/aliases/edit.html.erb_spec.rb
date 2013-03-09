require 'spec_helper'

describe "aliases/edit" do
  before(:each) do
    @alias = assign(:alias, stub_model(Alias,
      :email => "MyString",
      :user => "",
      :verified => false,
      :secret => "MyString"
    ))
  end

  it "renders the edit alias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", alias_path(@alias), "post" do
      assert_select "input#alias_email[name=?]", "alias[email]"
      assert_select "input#alias_user[name=?]", "alias[user]"
      assert_select "input#alias_verified[name=?]", "alias[verified]"
      assert_select "input#alias_secret[name=?]", "alias[secret]"
    end
  end
end
