require 'spec_helper'

describe "qualificacoes/edit.html.erb" do
  before(:each) do
    @qualificacao = assign(:qualificacao, stub_model(Qualificacao,
      :cliente_id => 1,
      :restaurante_id => 1,
      :nota => 1.5,
      :valor_gasto => 1.5
    ))
  end

  it "renders the edit qualificacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qualificacoes_path(@qualificacao), :method => "post" do
      assert_select "input#qualificacao_cliente_id", :name => "qualificacao[cliente_id]"
      assert_select "input#qualificacao_restaurante_id", :name => "qualificacao[restaurante_id]"
      assert_select "input#qualificacao_nota", :name => "qualificacao[nota]"
      assert_select "input#qualificacao_valor_gasto", :name => "qualificacao[valor_gasto]"
    end
  end
end
