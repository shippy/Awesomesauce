require 'spec_helper'

describe "templates/show" do
  before(:each) do
    @template = assign(:template, stub_model(Template,
      :subject => "Subject",
      :body => "MyText",
      :email_class => "Email Class",
      :email_template => "Email Template"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    rendered.should match(/MyText/)
    rendered.should match(/Email Class/)
    rendered.should match(/Email Template/)
  end
end
