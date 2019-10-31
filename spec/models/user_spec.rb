require 'rails_helper'

RSpec.describe User do
	subject  {described_class.new(encrypted_password: '123',email: "mimi@gmail.com")}

	describe 'email' do
		it 'deve estar presente' do
			expect(subject).to be_valid
		end
	end

	describe 'encrypted_password' do
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

#RSpec.describe User, type: :model do
# pending "add some examples to (or delete) #{__FILE__}"
end
