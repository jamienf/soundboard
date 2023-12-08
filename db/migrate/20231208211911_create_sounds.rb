class CreateSounds < ActiveRecord::Migration[6.1]
  def change
    create_table :sounds do |t|
      t.string :name
      t.binary :audio

      t.timestamps
    end
  end
end
