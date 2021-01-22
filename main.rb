plans = [
   { place: "沖縄", price: 10000 },
   { place: "北海道", price: 20000 },
   { place: "九州", price: 15000 }
]

require_relative 'methods.rb'

# #今後、仕様変更に対応しやすいように一部の値を定数に格納する。
MIN_PEOPLE_NUM = 1                        #最小人数
DISCOUNT_RATE = 0.1                       #割引率
AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE   #合計金額への割引適用率
DISCOUNT_PEOPLE_NUM = 5                   #割引適用人数

#旅行プランの詳細を表示する。
display_plans(plans)

#旅行プランを選択する。
selected_plan = select_plan(plans)

#旅行人数を決定する。
people_num = decide_people_num(selected_plan)

#旅行にかかる合計金額を算出する。5名以上だった場合、合計金額から10%引きになる。
calc_total_price(selected_plan, people_num)
