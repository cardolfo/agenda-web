class Contact < ApplicationRecord
  validates :nome, :birthdate, presence: true
  validates :cellphone, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, case_sensitive: false
end
