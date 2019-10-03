require 'rails_helper'

RSpec.describe "alunos/edit", type: :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :nome => "MyString",
      :altura => "9.99",
      :peso => "9.99",
      :objetivo => "MyString"
    ))
  end

  it "renders the edit aluno form" do
    render

    assert_select "form[action=?][method=?]", aluno_path(@aluno), "post" do

      assert_select "input[name=?]", "aluno[nome]"

      assert_select "input[name=?]", "aluno[altura]"

      assert_select "input[name=?]", "aluno[peso]"

      assert_select "input[name=?]", "aluno[objetivo]"
    end
  end
end
