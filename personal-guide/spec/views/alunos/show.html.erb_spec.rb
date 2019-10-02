require 'rails_helper'

RSpec.describe "alunos/show", type: :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :nome => "Nome",
      :altura => "9.99",
      :peso => "9.99",
      :objetivo => "Objetivo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Objetivo/)
  end
end
