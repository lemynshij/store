class DsdiProduct < ApplicationRecord
  has_one :product, :as => :ds_vendor
  validates_uniqueness_of :name
end
