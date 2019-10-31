require 'rails_helper'

RSpec.describe Aluno do
	subject  {described_class.new(nome: 'carlos',altura: 21,peso: 57, objetivo: 'emagrecer')}

	describe 'nome' do
		it 'deve estar presente' do
			expect(subject).to be_valid
		end
	end

	describe 'altura' do
		it 'deve estar presente' do
			expect(subject).to be_valid
		end
	end

	describe 'objetivo' do
		it 'deve estar presente' do
			expect(subject).to be_valid
		end
	end
	describe 'cpf' do
		it 'deve estar presente' do
			expect(subject).to be_valid
		end
	end
	describe 'tamanho' do
		it 'deve estar presente' do
			expect(Aluno.all.size()).to eq(0)
		end
	end
end