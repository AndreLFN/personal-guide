require 'rails_helper'

RSpec.describe "alunos/new", type: :view do
  before(:each) do
    assign(:aluno, Aluno.new(
      :nome => "MyString",
      :altura => "9.99",
      :peso => "9.99",
      :objetivo => "MyString"
    ))
  end

  it "renders new aluno form" do
    render

    assert_select "form[action=?][method=?]", alunos_path, "post" do

      assert_select "input[name=?]", "aluno[nome]"

      assert_select "input[name=?]", "aluno[altura]"

      assert_select "input[name=?]", "aluno[peso]"

      assert_select "input[name=?]", "aluno[objetivo]"
    end
  end
end
