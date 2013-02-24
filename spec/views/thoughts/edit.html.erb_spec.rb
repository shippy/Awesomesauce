require 'spec_helper'

describe "thoughts/edit" do
  before(:each) do
    @thought = assign(:thought, stub_model(Thought,
      :body => "MyString",
      :user => nil
    ))
  end

  it "renders the edit thought form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", thought_path(@thought), "post" do
      assert_select "input#thought_body[name=?]", "thought[body]"
      assert_select "input#thought_user[name=?]", "thought[user]"
    end
  end
end
