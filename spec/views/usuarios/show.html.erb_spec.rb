require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "Nome",
      :sobrenome => "Sobrenome",
      :imagem => "Imagem",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Sobrenome/)
    expect(rendered).to match(/Imagem/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
  end
end
