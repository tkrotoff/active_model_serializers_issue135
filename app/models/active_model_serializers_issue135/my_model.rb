module ActiveModelSerializersIssue135
  class MyModel < ActiveRecord::Base
    attr_accessible :description, :title
  end
end
