require "spec_helper"

describe ClientesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/clientes" }.should route_to(:controller => "clientes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/clientes/new" }.should route_to(:controller => "clientes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/clientes/1" }.should route_to(:controller => "clientes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/clientes/1/edit" }.should route_to(:controller => "clientes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/clientes" }.should route_to(:controller => "clientes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/clientes/1" }.should route_to(:controller => "clientes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/clientes/1" }.should route_to(:controller => "clientes", :action => "destroy", :id => "1")
    end

  end
end
