class Comment < ActiveRecord::Base
  belongs_to :entry
  attr_accessible :entry_id, :message, :user_id
end
