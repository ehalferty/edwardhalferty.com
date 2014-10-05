class Post < ActiveRecord::Base
  validates_uniqueness_of :title
  default_scope { order('created_at DESC') }

  has_many :post_attachments
  accepts_nested_attributes_for :post_attachments
end
