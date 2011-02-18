require 'spec_helper'

describe "qualificacoes/show.html.erb" do
  before(:each) do
    @qualificacao = assign(:qualificacao, stub_model(Qualificacao,
      :cliente_id => 1,
      :restaurante_id => 1,
      :nota => 1.5,
      :valor_gasto => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
