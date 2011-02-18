require 'spec_helper'

describe "clientes/new.html.erb" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :idade => 1
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path, :method => "post" do
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_idade", :name => "cliente[idade]"
    end
  end
end
