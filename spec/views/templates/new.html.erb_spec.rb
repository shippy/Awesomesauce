require 'spec_helper'

describe "templates/new" do
  before(:each) do
    assign(:template, stub_model(Template,
      :subject => "MyString",
      :body => "MyText",
      :email_class => "MyString",
      :email_template => "MyString"
    ).as_new_record)
  end

  it "renders new template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", templates_path, "post" do
      assert_select "input#template_subject[name=?]", "template[subject]"
      assert_select "textarea#template_body[name=?]", "template[body]"
      assert_select "input#template_email_class[name=?]", "template[email_class]"
      assert_select "input#template_email_template[name=?]", "template[email_template]"
    end
  end
end
