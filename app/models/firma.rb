class Firma < ApplicationRecord
    validates :nombre, :saludo, presence: true
end
