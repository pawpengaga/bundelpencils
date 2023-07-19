class Postulation < ApplicationRecord
  belongs_to :client
  belongs_to :article
  has_many_attached :pictures, dependent: :purge
  validates :client_id, uniqueness: { scope: :article_id } #El validador
end
