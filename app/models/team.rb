class Team < User
  has_and_belongs_to_many :playerrs, :join_table => 'teams_playerrs'
end
