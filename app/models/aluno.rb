class Aluno < ApplicationRecord
    validates :nome, presence: true
    validates :altura, presence: true
    validates :peso, presence: true
    validates :objetivo, presence: true
end
