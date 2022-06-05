coin = 100
point = 0
puts "----------"
puts "残りコイン数#{coin}"
puts "ポイント#{point}"

loop do
  puts "何コイン入れますか？"
  puts "0(10コイン) 1(30コイン) 2(50コイン) 3(やめとく)"
  puts "----------"
  putin = gets.to_i
  
  if  putin == 0 && coin < 10
    puts "コインが足りません。またチャレンジしてね！"
    break
  elsif putin == 1 && coin < 30
    puts "コインが足りません。"
    puts "またチャレンジしてね！"
    break
  elsif putin == 2 && coin < 50
    puts "コインが足りません。"
    puts "またチャレンジしてね！"
    break
  elsif putin == 3 
    puts "またチャレンジしてね！"
    break
  else
    puts "----------"
  end
  
  select = [10, 30, 50, "やめとく"]
  num1 = rand(1..9)
  num2 = rand(1..9)
  num3 = rand(1..9)
  num4 = rand(1..9)
  num5 = rand(1..9)
  num6 = rand(1..9)
  num7 = rand(1..9)
  num8 = rand(1..9)
  num9 = rand(1..9)
  
  puts "エンターを3回押しましょう！" 
  puts = gets
  puts "-------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts = gets
  puts "-------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts = gets
  puts "-------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  
  if (num1 == num4) && (num4 == num7) 
    coin = coin + 100 - select[putin]
    point = point + 500
    puts "-------------"
    puts "おめでとう！上の数字が全て揃いました！"
    puts "100コイン獲得！"
    puts "500ポイント獲得"
    puts "残りのコイン数：#{coin}"
    puts "ポイント数:#{point}"
  elsif (num2 == num5) && (num5 == num8) 
    coin = coin + 100 - select[putin]
    point = point + 500
    puts "-------------"
    puts "おめでとう！真ん中の数字が全て揃いました！"
    puts "100コイン獲得！"
    puts "500ポイント獲得"
    puts "残りのコイン数：#{coin}"
    puts "ポイント数:#{point}"
  elsif (num3 == num6) && (num6 == num9) 
    coin = coin + 100 - select[putin]
    point = point + 500
    puts "-------------"
    puts "おめでとう！下の数字が全て揃いました！"
    puts "100コイン獲得！"
    puts "500ポイント獲得"
    puts "残りのコイン数：#{coin}"
    puts "ポイント数:#{point}"
  elsif (num1 == num5) && (num5 == num9) 
    coin = coin + 100 - select[putin]
    point = point + 500
    puts "-------------"
    puts "おめでとう！下の数字が全て揃いました！"
    puts "100コイン獲得！"
    puts "500ポイント獲得"
    puts "残りのコイン数：#{coin}"
    puts "ポイント数:#{point}"
  elsif (num3 == num5) && (num5 == num7) 
    coin = coin + 100 - select[putin]
    point = point + 500
    puts "-------------"
    puts "おめでとう！下の数字が全て揃いました！"
    puts "100コイン獲得！"
    puts "500ポイント獲得"
    puts "残りのコイン数：#{coin}"
    puts "ポイント数:#{point}"
  else
    coin = coin - select[putin]
    if coin > 0
      puts "-------------"
      puts "残念！もう一回挑戦しよう！"
      puts "残りのコイン数：#{coin}"
      puts "ポイント数:#{point}"
      puts "-------------"
    else
      puts "残念。ハズレです。"
      puts "コインが無くなりました。またチャレンジしてね"
      break
    end
  end
end