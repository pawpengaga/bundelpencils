class Article < ApplicationRecord
  belongs_to :client
  has_many :postulations, dependent: :destroy
end
