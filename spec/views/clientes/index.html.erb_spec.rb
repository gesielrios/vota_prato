require 'spec_helper'

describe "clientes/index.html.erb" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :idade => 1
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :idade => 1
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
