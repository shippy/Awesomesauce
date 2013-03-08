require 'spec_helper'

describe "templates/index" do
  before(:each) do
    assign(:templates, [
      stub_model(Template,
        :subject => "Subject",
        :body => "MyText",
        :email_class => "Email Class",
        :email_template => "Email Template"
      ),
      stub_model(Template,
        :subject => "Subject",
        :body => "MyText",
        :email_class => "Email Class",
        :email_template => "Email Template"
      )
    ])
  end

  it "renders a list of templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email Class".to_s, :count => 2
    assert_select "tr>td", :text => "Email Template".to_s, :count => 2
  end
end
