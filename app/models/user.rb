class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    User.where(:email => data["email"]).first || User.create(
      name: data["name"],
      email: data["email"],
      password: Devise.friendly_token[0,20]
    )
  end
end
