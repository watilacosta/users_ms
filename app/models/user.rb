# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :email, :cpf, presence: true
  validates :email, :cpf, uniqueness: true
  validates :cpf, length: { is: 11 }
  validates :password, length: { minimum: 6 }, allow_nil: false
end
