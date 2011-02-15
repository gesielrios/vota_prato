class Restaurante < ActiveRecord::Base

  validates_presence_of :nome, :message => "deve ser preenchido"
  validates_presence_of :endereco, :message => "deve ser preenchido"
  validates_presence_of :especialidade, :message => "deve ser preenchido"

  validates_uniqueness_of :nome, :message => "nome já cadastrado"
  validates_uniqueness_of :endereco, :message => "endreço já cadastrado"

  validate :primeira_letra_deve_ser_maiscula

  private

  def primeira_letra_deve_ser_maiscula
    erros.add("nome", "primeira letra deve ser maiscula") unless nome =~ /[A-Z].*
  end

end

