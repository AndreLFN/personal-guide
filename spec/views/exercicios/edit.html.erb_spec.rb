require 'rails_helper'

RSpec.describe "exercicios/edit", type: :view do
  before(:each) do
    @exercicio = assign(:exercicio, Exercicio.create!(
      :nome => "MyString",
      :descricao => "MyText",
      :imagem => "MyString",
      :qtd => 1
    ))
  end

  it "renders the edit exercicio form" do
    render

    assert_select "form[action=?][method=?]", exercicio_path(@exercicio), "post" do

      assert_select "input[name=?]", "exercicio[nome]"

      assert_select "textarea[name=?]", "exercicio[descricao]"

      assert_select "input[name=?]", "exercicio[imagem]"

      assert_select "input[name=?]", "exercicio[qtd]"
    end
  end
end
