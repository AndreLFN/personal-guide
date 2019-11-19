require 'rails_helper'

RSpec.describe "avaliacoes_fisicas/show", type: :view do
  before(:each) do
    @avaliacoes_fisica = assign(:avaliacoes_fisica, AvaliacoesFisica.create!(
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
