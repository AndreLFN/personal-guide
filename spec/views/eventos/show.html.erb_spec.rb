require 'rails_helper'

RSpec.describe "eventos/show", type: :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :titulo => "Titulo",
      :descricao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
  end
end
