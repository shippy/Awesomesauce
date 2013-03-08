class Template < ActiveRecord::Base
  attr_accessible :body, :email_class, :email_template, :subject
end
