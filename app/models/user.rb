class User < ApplicationRecord
  has_many :daily_logs

  validates :gmail_uid, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true

  def self.from_omniauth(access_token)
    gmail_uid = access_token.uid
    data = access_token.info

    User.find_or_create_by(email: data['email'], gmail_uid: gmail_uid, name: data['name'])
  end
end
