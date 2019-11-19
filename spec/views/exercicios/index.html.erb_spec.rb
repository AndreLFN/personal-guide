require 'rails_helper'

RSpec.describe "exercicios/index", type: :view do
  before(:each) do
    assign(:exercicios, [
      Exercicio.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :imagem => "Imagem",
        :qtd => 2
      ),
      Exercicio.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :imagem => "Imagem",
        :qtd => 2
      )
    ])
  end

  it "renders a list of exercicios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Imagem".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
