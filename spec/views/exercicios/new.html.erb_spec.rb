require 'rails_helper'

RSpec.describe "exercicios/new", type: :view do
  before(:each) do
    assign(:exercicio, Exercicio.new(
      :nome => "MyString",
      :descricao => "MyText",
      :imagem => "MyString",
      :qtd => 1
    ))
  end

  it "renders new exercicio form" do
    render

    assert_select "form[action=?][method=?]", exercicios_path, "post" do

      assert_select "input[name=?]", "exercicio[nome]"

      assert_select "textarea[name=?]", "exercicio[descricao]"

      assert_select "input[name=?]", "exercicio[imagem]"

      assert_select "input[name=?]", "exercicio[qtd]"
    end
  end
end
