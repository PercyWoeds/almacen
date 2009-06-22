class CreateInventarios < ActiveRecord::Migration
  def self.up
    create_table :inventarios do |t|
      t.datetime :fecha
      t.string :descripcion
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :inventarios
  end
end