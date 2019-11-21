require 'rails_helper'

RSpec.describe "eventos/new", type: :view do
  before(:each) do
    assign(:evento, Evento.new(
      :titulo => "MyString",
      :descricao => "MyText"
    ))
  end

  it "renders new evento form" do
    render

    assert_select "form[action=?][method=?]", eventos_path, "post" do

      assert_select "input[name=?]", "evento[titulo]"

      assert_select "textarea[name=?]", "evento[descricao]"
    end
  end
end
