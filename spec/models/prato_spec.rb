require 'spec_helper'

describe Prato do

  before(:each) do
    @prato = Prato.new
  end

  it "should not be valid without attributes" do
    @prato.should_not be_valid
  end

  it "should validate the name" do
    @prato.should_not be_valid
    @prato.should have(1).errors_on(:nome)
    @prato.nome = "Prato de Teste para o RSpec"
    @prato.should_not be_valid
    @prato.should have(:no).errors_on(:nome)
  end

  it "should validate validate presence of more than one restaurante" do
    @prato.should_not be_valid
    @prato.nome = "Prato de teste para o RSpec"
    @prato.should_not be_valid
    @prato.restaurantes << Factory.build(:restaurante)
    @prato.should be_valid
  end

  it "should validates uniqueness of nome " do
    @prato.should_not be_valid
    @prato.nome = "Prato de Teste para o RSpec"
    @prato.restaurantes << Factory.build(:restaurante)
    @prato.should be_valid
    @prato.save!
    @prato = Prato.new
    @prato.nome = "Prato de Teste para o RSpec"
    @prato.restaurantes << Factory.build(:restaurante)
    @prato.should_not be_valid
  end

end

