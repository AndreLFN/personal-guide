require 'rails_helper'

RSpec.describe "usuarios/edit", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "MyString",
      :sobrenome => "MyString",
      :imagem => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input[name=?]", "usuario[nome]"

      assert_select "input[name=?]", "usuario[sobrenome]"

      assert_select "input[name=?]", "usuario[imagem]"

      assert_select "input[name=?]", "usuario[email]"

      assert_select "input[name=?]", "usuario[password]"
    end
  end
end
