class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, uniqueness: true, format: {
    with: /([A-Za-z0-9\-\_]+)/, message: I18n.t("validations.user.username_invalid")
  }
  validates_length_of :username, within: 4..250, too_long: I18n.t("validations.user.username_long"), too_short: I18n.t("validations.user.username_short")
  has_many :web_app
end
