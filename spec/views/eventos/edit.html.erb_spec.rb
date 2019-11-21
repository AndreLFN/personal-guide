require 'rails_helper'

RSpec.describe "eventos/edit", type: :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :titulo => "MyString",
      :descricao => "MyText"
    ))
  end

  it "renders the edit evento form" do
    render

    assert_select "form[action=?][method=?]", evento_path(@evento), "post" do

      assert_select "input[name=?]", "evento[titulo]"

      assert_select "textarea[name=?]", "evento[descricao]"
    end
  end
end
