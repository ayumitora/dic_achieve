class Player
  def hand
    regular_numbers = [1,2,3]
    while true
    puts("1~3の数字を半角で入力してください。\n1: グー\n2: チョキ\n3: パー")
    player_hand = gets.to_i
    break if regular_numbers.include?(player_hand)
    end
    player_hand -= 1
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)
    return enemy_hand
  end
end

class Janken 
  def pon(player_hand, enemy_hand)
    (judgment = ((player_hand - enemy_hand + 3) % 3))
    if
      judgment == 2
      result= "あなたの勝ち"
    elsif judgment == 1
      result = "あなたの負け"
    elsif judgment == 0
      result = "あいこ"
    end
    case enemy_hand
    when 0
      enemy_type = "グー"
    when 1
      enemy_type = "チョキ"
    when 2
      enemy_type = "パー"
    end
    puts("相手の手は#{enemy_type}です。#{result}です。")
    if result == "あいこ"
      return bout
    end
  end
end

def bout
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new
  janken.pon(player.hand, enemy.hand)
end

bout