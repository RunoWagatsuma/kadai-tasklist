class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.references :user, foreign_key: true # reference型はuser_idというカラムを作成してくれるメリットがある

      t.timestamps
    end
  end
end
