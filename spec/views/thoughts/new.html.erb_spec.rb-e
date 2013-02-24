require 'spec_helper'

describe "thoughts/new" do
  before(:each) do
    assign(:thought, stub_model(Thought,
      :body => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new thought form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", thoughts_path, "post" do
      assert_select "input#thought_body[name=?]", "thought[body]"
      assert_select "input#thought_user[name=?]", "thought[user]"
    end
  end
end
