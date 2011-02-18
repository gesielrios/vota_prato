require 'spec_helper'

describe "comentarios/index.html.erb" do
  before(:each) do
    assign(:comentarios, [
      stub_model(Comentario,
        :conteudo => "MyText",
        :comentavel_id => 1,
        :comentavel_type => "Comentavel_type"
      ),
      stub_model(Comentario,
        :conteudo => "MyText",
        :comentavel_id => 1,
        :comentavel_type => "Comentavel_type"
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comentavel_type".to_s, :count => 2
  end
end
