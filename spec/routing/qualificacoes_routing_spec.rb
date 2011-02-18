require "spec_helper"

describe QualificacoesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/qualificacoes" }.should route_to(:controller => "qualificacoes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/qualificacoes/new" }.should route_to(:controller => "qualificacoes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/qualificacoes/1" }.should route_to(:controller => "qualificacoes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/qualificacoes/1/edit" }.should route_to(:controller => "qualificacoes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/qualificacoes" }.should route_to(:controller => "qualificacoes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/qualificacoes/1" }.should route_to(:controller => "qualificacoes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/qualificacoes/1" }.should route_to(:controller => "qualificacoes", :action => "destroy", :id => "1")
    end

  end
end
