require 'rails_helper'

RSpec.describe "avaliacoes_fisicas/new", type: :view do
  before(:each) do
    assign(:avaliacoes_fisica, AvaliacoesFisica.new(
      :cintura => "9.99",
      :envergadura => "9.99",
      :peitoral => "9.99",
      :braco => "9.99",
      :coxa => "9.99",
      :gordura_abdomem => "9.99",
      :gordura_braco => "9.99",
      :gordura_coxa => "9.99",
      :flexao => "9.99",
      :agachamento => "9.99",
      :abdominal => "9.99",
      :corrida => "9.99"
    ))
  end

  it "renders new avaliacoes_fisica form" do
    render

    assert_select "form[action=?][method=?]", avaliacoes_fisicas_path, "post" do

      assert_select "input[name=?]", "avaliacoes_fisica[cintura]"

      assert_select "input[name=?]", "avaliacoes_fisica[envergadura]"

      assert_select "input[name=?]", "avaliacoes_fisica[peitoral]"

      assert_select "input[name=?]", "avaliacoes_fisica[braco]"

      assert_select "input[name=?]", "avaliacoes_fisica[coxa]"

      assert_select "input[name=?]", "avaliacoes_fisica[gordura_abdomem]"

      assert_select "input[name=?]", "avaliacoes_fisica[gordura_braco]"

      assert_select "input[name=?]", "avaliacoes_fisica[gordura_coxa]"

      assert_select "input[name=?]", "avaliacoes_fisica[flexao]"

      assert_select "input[name=?]", "avaliacoes_fisica[agachamento]"

      assert_select "input[name=?]", "avaliacoes_fisica[abdominal]"

      assert_select "input[name=?]", "avaliacoes_fisica[corrida]"
    end
  end
end
