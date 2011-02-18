class Restaurante < ActiveRecord::Base

  has_many :qualificacoes
  has_many :comentarios, :as => :comentavel
  has_and_belongs_to_many :pratos

  validates_presence_of :nome, :message => "deve ser preenchido"
  validates_presence_of :endereco, :message => "deve ser preenchido"
  validates_presence_of :especialidade, :message => "deve ser preenchido"

  validates_uniqueness_of :nome, :message => "nome já cadastrado"
  validates_uniqueness_of :endereco, :message => "endreço já cadastrado"

  validate :primeira_letra_deve_ser_maiscula

  scope :massas, where({:especialidade => 'massas'})


  private

  def primeira_letra_deve_ser_maiscula
    errors.add("nome", "primeira letra deve ser maiscula") unless nome =~ /[A-Z].*/
  end

end

