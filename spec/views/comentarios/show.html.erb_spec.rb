require 'spec_helper'

describe "comentarios/show.html.erb" do
  before(:each) do
    @comentario = assign(:comentario, stub_model(Comentario,
      :conteudo => "MyText",
      :comentavel_id => 1,
      :comentavel_type => "Comentavel_type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comentavel_type/)
  end
end
