class Playerr < User
  has_and_belongs_to_many :teams, :join_table => 'teams_playerrs'
  has_one_attached :image
  # searchkick 

  # def search_data
  #   {
  #     name: name
  #   }
  # end
end

