require 'spec_helper'

describe "clientes/show.html.erb" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :idade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
