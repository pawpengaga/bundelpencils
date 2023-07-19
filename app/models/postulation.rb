class Postulation < ApplicationRecord
  belongs_to :client
  belongs_to :article
  validates :client_id, uniqueness: { scope: :article_id } #El validador
end
