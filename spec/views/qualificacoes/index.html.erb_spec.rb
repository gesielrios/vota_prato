require 'spec_helper'

describe "qualificacoes/index.html.erb" do
  before(:each) do
    assign(:qualificacoes, [
      stub_model(Qualificacao,
        :cliente_id => 1,
        :restaurante_id => 1,
        :nota => 1.5,
        :valor_gasto => 1.5
      ),
      stub_model(Qualificacao,
        :cliente_id => 1,
        :restaurante_id => 1,
        :nota => 1.5,
        :valor_gasto => 1.5
      )
    ])
  end

  it "renders a list of qualificacoes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
