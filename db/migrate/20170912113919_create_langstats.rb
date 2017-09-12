class CreateLangstats < ActiveRecord::Migration[5.1]
  def change
    create_table :langstats do |t|
      t.string :language
      t.integer :A
      t.integer :B
      t.integer :C
      t.integer :D
      t.integer :E
      t.integer :F
      t.integer :G
      t.integer :H
      t.integer :I
      t.integer :J
      t.integer :K
      t.integer :L
      t.integer :M
      t.integer :N
      t.integer :O
      t.integer :P
      t.integer :Q
      t.integer :R
      t.integer :S
      t.integer :T
      t.integer :U
      t.integer :V
      t.integer :W
      t.integer :X
      t.integer :Y
      t.integer :Z
      
      t.timestamps
    end
  end
end
