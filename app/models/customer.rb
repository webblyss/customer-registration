class Customer < ApplicationRecord

    attribute :firstname,:string
    attribute :lastname, :string
    attribute :email, :string
    attribute :job, :string
    attribute :description, :string

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true
    validates :job, presence: true
    validates :description, presence: true

end
