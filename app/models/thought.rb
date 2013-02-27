class Thought < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :date, :highlight
end
