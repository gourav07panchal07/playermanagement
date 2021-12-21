class TeamsPlayerrs < ActiveRecord::Migration[6.1]
  def change
      create_table :teams_playerrs, id: false do |t|
      t.belongs_to :team
      t.belongs_to :playerr
    end
  end
end
