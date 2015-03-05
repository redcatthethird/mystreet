class Product < ActiveRecord::Base
  belongs_to :shop

  has_many :customers, through: :sales
end
