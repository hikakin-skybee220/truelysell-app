class User < ApplicationRecord
    # attr_accessor :activation_token
    # before_create :create_activation_digest
    validates :name, {presence: true}
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, {presence: true , uniqueness: true}
    validates :password, {length: {minimum: 6}}

    has_secure_password

    # attr_accessor :remember_token, :activation_token
    # before_save   :downcase_email　#コールバックにメソッドを渡す（追加事項）。
    # before_create :create_activation_digest

    # def authenticated?(attribute, token)
    #     digest = send("#{attribute}_digest")
    #     return false if digest.nil?
    #     BCrypt::Password.new(digest).is_password?(token)
    # end

    # private
    # #メアドを小文字化するメソッドを定義する(追加事項)。
    # def downcase_email
    #   self.email = email.downcase
    # end
    # #1-2.有効化トークンの作成し、作成した有効化トークンをハッシュ化しダイジェストへ保存。
    # def create_activation_digest
    #   self.activation_token  = User.new_token
    #   self.activation_digest = User.digest(activation_token)
    # end

    # private
    # def downcase_email
    #     self.email.downcase!
    # end
    # def create_activation_digest
    #     self.activation_token  = User.new_token
    #     self.activation_digest = User.digest(activation_token)
    # end
    # def User.new_token
    #     SecureRandom.urlsafe_base64
    # end
end
