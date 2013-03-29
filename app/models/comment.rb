class Comment < ActiveRecord::Base
  belongs_to :entry, :class_name => "Entry"
end
