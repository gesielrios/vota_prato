require 'spec_helper'

describe "clientes/edit.html.erb" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :idade => 1
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path(@cliente), :method => "post" do
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_idade", :name => "cliente[idade]"
    end
  end
end
