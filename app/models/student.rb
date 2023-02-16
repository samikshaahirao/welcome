class Student < ApplicationRecord
    validates :first_name, :last_name, :age, :standard, presence: true
    validates :first_name, length: { maximum: 10}
    validates :last_name, length: { maximum: 5 }
    validates :terms_of_service, acceptance: { accept: 'yes' }
    validates :eula, acceptance: { accept: ['TRUE', 'accepted'] }
end
