

puts "じゃんけん..."

def janken
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  computer_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
    puts "ホイ！"  
    puts "-----------------"
    puts "あなたは#{jankens[player_hand]}を出しました"
    puts "相手は#{jankens[computer_hand]}を出しました"
    puts "-----------------"
  
  
while  player_hand == computer_hand do
  puts "あいこで..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i
    computer_hand = rand(3)
    jankens = ["グー","チョキ","パー"]
      puts "ホイ！"  
      puts "-----------------"
      puts "あなたは#{jankens[player_hand]}を出しました"
      puts "相手は#{jankens[computer_hand]}を出しました"
      puts "-----------------"
end      


if(player_hand == 0 && computer_hand == 1)||(player_hand == 1 && computer_hand == 2)||(player_hand == 2 && computer_hand == 0) 
  puts "あっち向いて..."
  puts "0(上)1(下)2(左)3(右)"
    player_direction = gets.to_i
    computer_direction = rand(4)
    directions = ["上","下","左","右"]
      puts "ホイ！"
      puts "-----------------"
      puts "あなた：#{directions[player_direction]}"
      puts "相手：#{directions[computer_direction]}"
      puts "-----------------"   
      
  if player_direction == computer_direction
    puts "あなたの勝ちです"
  
  else  
    return true
  end  

elsif(player_hand == 0 && computer_hand == 2)||(player_hand == 1 && computer_hand == 0)||(player_hand == 2 && computer_hand == 1) 
  puts "あっち向いて..."
  puts "0(上)1(下)2(左)3(右)"
    player_lose_direction = gets.to_i
    computer_direction = rand(4)
    directions = ["上","下","左","右"]
      puts "ホイ！"
      puts "-----------------"
      puts "あなた：#{directions[player_lose_direction]}"
      puts "相手：#{directions[computer_direction]}"
      puts "-----------------"     

  if player_lose_direction == computer_direction
    puts "あなたの負けです"
  else
    return true
  end  

elsif player_hand == 3
  puts "戦いませんでした"
      
end
end

next_game = true

while next_game
  next_game = janken
end  

