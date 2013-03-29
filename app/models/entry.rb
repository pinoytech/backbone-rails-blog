class Entry < ActiveRecord::Base
  has_many :comments, :class_name => "Comment", :foreign_key => "comment_id"
  attr_accessible :title, :body
end
