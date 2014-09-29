class Post < ActiveRecord::Base
  validates_uniqueness_of :title
  default_scope { order('created_at DESC') }
end
