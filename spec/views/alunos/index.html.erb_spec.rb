require 'rails_helper'

RSpec.describe "alunos/index", type: :view do
  before(:each) do
    assign(:alunos, [
      Aluno.create!(
        :nome => "Nome",
        :altura => "9.99",
        :peso => "9.99",
        :objetivo => "Objetivo"
      ),
      Aluno.create!(
        :nome => "Nome",
        :altura => "9.99",
        :peso => "9.99",
        :objetivo => "Objetivo"
      )
    ])
  end

  it "renders a list of alunos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Objetivo".to_s, :count => 2
  end
end
