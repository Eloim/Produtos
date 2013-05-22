class Produto < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :description, :name, :status, :user_id, :category_id

  validates_presence_of :description
  validates_presence_of :name
end
