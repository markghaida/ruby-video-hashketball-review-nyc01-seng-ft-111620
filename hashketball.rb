require 'pry'
# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored (players_name)
  #binding.pry
  game_hash.each do |key, value|
     #binding.pry
    value.each do |k, v|
       #binding.pry
      if k == :players 
         #binding.pry
        game_hash[key][:players].each do |player|
          player.each do |stat_key, stat_value|
           #binding.pry
            if stat_value == players_name
               #binding.pry
                return player[:points]
                #binding.pry
            end 
          end  
        end 
      end 
    end 
  end 
end 
#Test is passing on Repl.it "Hashketball - most_points_scored"
# def most_points_scored(game_hash)
#   largest_num = 0
#   largest_num_name = ""
#   binding.pry
#   game_hash.each do |key, value|
#     binding.pry
#     value.each do |k, v|
#       binding.pry
#       if k == :players 
#         binding.pry
#         game_hash[key][:players].each do |player|
#           player.each do |stat_key, stat_value|
#             binding.pry
#             if player[:points] > largest_num
#               largest_num = player[:points]
#               largest_num_name = player[:player_name]
#             end 
#           end 
#         end 
#       end 
#     end 
#   end 
# end 

# def shoe_size(players_name)
#   winning_team = []
#   team1_points = 0
#   team2_points = 0
#   team1 = ""
#   team2 = ""
#   game_hash.each do |key, value|
#   binding.pry
#     value.each do |k, v|
#       #binding.pry
#       if k == :players 
#         game_hash[key][:players].each do |player|
#           #binding.pry
#           player.each do |stat_key, stat_value|
#             binding.pry
#             if game_hash[key] == :home 
#               binding.pry
#               team1_points = team1_points + player[:points]
#               team1_name = game_hash[key][:team_name]
#             elsif game_hash[key] == :away
#             binding.pry
#               team2_points = team2_points + player[:points]
#               team2_name = game_hash[key][:team_name]
#             end 
#           end 
#         end 
#       end 
#     end 
#   end 
#   if team1_points > team2_points 
#     binding.pry
#         winning_team << team1[:team_name]
#   elsif team2_points > team1_points 
#   binding.pry
#         winning_team << team2[:team_name]
#   end 
#   binding.pry
#   puts winning_team[0]
# end

def shoe_size (players_name)
  game_hash.each do |key, value|
    value.each do |k, v|
      value[:players].each do |player|
        binding.pry
        if players_name == player[:player_name]
          #binding.pry
          return value[:players][:points]
        end 
      end 
    end 
  end 
end 