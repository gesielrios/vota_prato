require 'spec_helper'

describe Cliente do

  before(:each) do
    @cliente = Cliente.new
  end

  it "should not be valid without attributes" do
    @cliente.should_not be_valid
  end

  it "should validate the name" do
    @cliente.should_not be_valid
    @cliente.should have(1).errors_on(:nome)
    @cliente.nome = "Cliente de teste do RSpec"
    @cliente.should_not be_valid
    @cliente.should have(:no).errors_on(:nome)
  end

  it "should validate the idade" do
    @cliente.should_not be_valid
    @cliente.idade = -1
    @cliente.should have(1).errors_on(:idade)
    @cliente.idade = 101
    @cliente.should have(1).errors_on(:idade)
    @cliente.idade = "a"
    @cliente.should have(1).errors_on(:idade)
    @cliente.idade = 30
    @cliente.should_not be_valid
    @cliente.should have(:no).errors_on(:idade)
  end

  it "should validate the uniqueness of nome" do
    @cliente.should_not be_valid
    @cliente.nome = "Usuarios de teste do RSpec"
    @cliente.idade = 30
    @cliente.should be_valid
    @cliente.save!
    @cliente = Cliente.new
    @cliente.nome = "Usuarios de teste do RSpec"
    @cliente.idade = 30
    @cliente.should_not be_valid
  end

end

