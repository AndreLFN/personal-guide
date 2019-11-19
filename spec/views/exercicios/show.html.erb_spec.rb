require 'rails_helper'

RSpec.describe "exercicios/show", type: :view do
  before(:each) do
    @exercicio = assign(:exercicio, Exercicio.create!(
      :nome => "Nome",
      :descricao => "MyText",
      :imagem => "Imagem",
      :qtd => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Imagem/)
    expect(rendered).to match(/2/)
  end
end
