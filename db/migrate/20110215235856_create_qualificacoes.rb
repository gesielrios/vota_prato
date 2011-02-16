class CreateQualificacoes < ActiveRecord::Migration
  def self.up
    create_table :qualificacoes do |t|
      t.belongs_to :cliente
      t.references :restaurante
      t.float :nota
      t.float :valor_gasto

      t.timestamps
    end

    add_index(:qualificacoes, :cliente_id)
    add_index(:qualificacoes, :restaurante_id)

  end

  def self.down
    drop_table :qualificacoes
  end
end

