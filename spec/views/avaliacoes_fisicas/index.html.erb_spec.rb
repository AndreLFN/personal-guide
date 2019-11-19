require 'rails_helper'

RSpec.describe "avaliacoes_fisicas/index", type: :view do
  before(:each) do
    assign(:avaliacoes_fisicas, [
      AvaliacoesFisica.create!(
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
      ),
      AvaliacoesFisica.create!(
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
      )
    ])
  end

  it "renders a list of avaliacoes_fisicas" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
