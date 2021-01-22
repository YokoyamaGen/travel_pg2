def display_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行（#{plan[:price]}円）"
  end
end

def select_plan(plans)
  while true
    print "プランの番号を選択 > "
    selected_plan_num = gets.to_i
    return plans[selected_plan_num -1] if (1..3).include?(selected_plan_num) 
    puts "1〜3の番号を入力して下さい。"
  end
end

def decide_people_num(selected_plan)
  puts "#{selected_plan[:place]}ですね。"
  while true
    puts "何名で予約されますか？"
    print "人数を入力 > "
    people_num = gets.to_i
    break if people_num >= MIN_PEOPLE_NUM
    puts "#{MIN_PEOPLE_NUM}以上を入力して下さい。"
  end
  puts "#{people_num}名ですね。"
  people_num
end

def calc_total_price(selected_plan, people_num)
  total_price = selected_plan[:price] * people_num

  if people_num >= DISCOUNT_PEOPLE_NUM
    puts "#{DISCOUNT_PEOPLE_NUM}名以上ですので#{(DISCOUNT_RATE * 100).floor}%割引となります"
    total_price *= AFTER_DISCOUNT_RATE
  end

  puts "合計金額は#{total_price.floor}円になります。"
end

