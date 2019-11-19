require 'rails_helper'

RSpec.describe "usuarios/new", type: :view do
  before(:each) do
    assign(:usuario, Usuario.new(
      :nome => "MyString",
      :sobrenome => "MyString",
      :imagem => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new usuario form" do
    render

    assert_select "form[action=?][method=?]", usuarios_path, "post" do

      assert_select "input[name=?]", "usuario[nome]"

      assert_select "input[name=?]", "usuario[sobrenome]"

      assert_select "input[name=?]", "usuario[imagem]"

      assert_select "input[name=?]", "usuario[email]"

      assert_select "input[name=?]", "usuario[password]"
    end
  end
end
