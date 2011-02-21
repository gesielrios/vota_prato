require 'spec_helper'

describe Qualificacao do

  before(:each) do
    @qualificacao = Qualificacao.new
  end

  it "should not be valid without attributes" do
    @qualificacao.should_not be_valid
  end

  it "should validate the nota" do
    @qualificacao.should_not be_valid
    @qualificacao.should have(2).errors_on(:nota)
    @qualificacao.nota = "a"
    @qualificacao.should have(1).errors_on(:nota)
    @qualificacao.nota = -1.0
    @qualificacao.should have(1).errors_on(:nota)
    @qualificacao.nota = 11.0
    @qualificacao.should have(1).errors_on(:nota)
    @qualificacao.nota = 10.0
    @qualificacao.should_not be_valid
    @qualificacao.should have(:no).errors_on(:nota)
  end

  it "shoud validate the valor_gasto" do
    @qualificacao.should_not be_valid
    @qualificacao.should have(2).errors_on(:valor_gasto)
    @qualificacao.valor_gasto = "a"
    @qualificacao.should have(1).errors_on(:valor_gasto)
    @qualificacao.valor_gasto = -1.0
    @qualificacao.should have(1).errors_on(:valor_gasto)
    @qualificacao.valor_gasto = 10.0
    @qualificacao.should_not be_valid
    @qualificacao.should have(:no).errors_on(:valor_gasto)
  end

  it "should validate the cliente" do
    @qualificacao.should_not be_valid
    @qualificacao.should have(1).errors_on(:cliente_id)
    @qualificacao.cliente = Factory.build(:cliente)
    @qualificacao.cliente.should_not be_nil
    @qualificacao.should_not have(:no).errors_on(:cliente_id)
  end

  it "should validate the restaurante" do
    @qualificacao.should_not be_valid
    @qualificacao.should have(1).errors_on(:restaurante_id)
    @qualificacao.restaurante = Factory.build(:restaurante)
    @qualificacao.restaurante.should_not be_nil
    @qualificacao.should_not have(:no).errors_on(:restaurante_id)
  end

end

