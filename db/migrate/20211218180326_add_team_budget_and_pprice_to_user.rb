class AddTeamBudgetAndPpriceToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :team_budget, :integer
    add_column :users, :player_price, :integer
  end
end
