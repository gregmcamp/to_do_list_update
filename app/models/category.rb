class Category < ActiveRecord::Base
  belongs_to :todo, dependent: :destroy
  validates_presence_of :name
end
