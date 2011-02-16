class CreateReceitas < ActiveRecord::Migration
  def self.up
    create_table :receitas do |t|
      t.references :prato
      t.text :conteudo

      t.timestamps
    end

    add_index(:receitas, :prato_id)
  end

  def self.down
    drop_table :receitas
  end
end

