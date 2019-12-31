class Leader < ApplicationRecord

  # def self.top_ten
  #   arr_top_ten = []
  #   hash_id_score = {}
  #   Leader.find_each do |leader|
  #     hash_id_score[leader.id] = leader.wins - leader.losses
  #   end
  #   arr_id_score = hash_id_score.sort_by {|k, v| -v}.first(10)
  #   arr_id_score.each do |i|
  #     arr_top_ten.push(Leader.find(i[0]))
  #   end
  #   arr_top_ten
  # end

  def self.top_ten
    arr_top_ten = []
    hash_id_score = {}

    Leader.find_each do |leader|
      hash_id_score[leader.id] = [leader.wins - leader.losses, leader.accuracy]
    end

    arr_id_score = hash_id_score.sort_by {|k, v| [-v[0], -v[1]]}.first(10)

    arr_id_score.each do |i|
      arr_top_ten.push(Leader.find(i[0]))
    end

    arr_top_ten
  end
  
end