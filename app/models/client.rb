class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles, dependent: :destroy
  has_many :postulations, dependent: :destroy
  has_one_attached :pfp, dependent: :destroy

  enum :role, [:user, :admin]

  after_create :attach_default_pfp #Aun no configuro esto
  before_destroy :purge_pfp

  private

  def attach_default_pfp
    unless pfp.attached?
      pfp.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default-avatar.jpg')), filename: 'default-avatar.jpg', content_type: 'image/jpg')
    end
  end

  def purge_pfp
    pfp.purge if pfp.attached?
  end
end
