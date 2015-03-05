class Customer < ActiveRecord::Base
  has_many :products, through: :sales
end
