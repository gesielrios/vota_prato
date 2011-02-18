require 'spec_helper'

describe "comentarios/edit.html.erb" do
  before(:each) do
    @comentario = assign(:comentario, stub_model(Comentario,
      :conteudo => "MyText",
      :comentavel_id => 1,
      :comentavel_type => "MyString"
    ))
  end

  it "renders the edit comentario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comentarios_path(@comentario), :method => "post" do
      assert_select "textarea#comentario_conteudo", :name => "comentario[conteudo]"
      assert_select "input#comentario_comentavel_id", :name => "comentario[comentavel_id]"
      assert_select "input#comentario_comentavel_type", :name => "comentario[comentavel_type]"
    end
  end
end
