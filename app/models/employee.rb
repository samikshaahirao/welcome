class Employee < ApplicationRecord
has_many  :document
validates :first_name, :last_name, presence: true
validates :email, presence: true, uniqueness: true


end
