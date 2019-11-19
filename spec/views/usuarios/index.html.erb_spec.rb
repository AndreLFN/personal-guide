require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nome => "Nome",
        :sobrenome => "Sobrenome",
        :imagem => "Imagem",
        :email => "Email",
        :password => "Password"
      ),
      Usuario.create!(
        :nome => "Nome",
        :sobrenome => "Sobrenome",
        :imagem => "Imagem",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sobrenome".to_s, :count => 2
    assert_select "tr>td", :text => "Imagem".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
