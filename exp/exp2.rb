# 【問題2】真偽値と条件分岐の理解チェック
# (1)118の2乗が24の3乗よりも大きいことを、真偽値を用いて確かめてください.
# ヒント： a の b乗 は a ** b で計算できます
puts 118 ** 2 > 24 * 3 # true (13924 > 13824となるため)

# (2)変数countryに文字列'Japan'を代入してください.
# countryが'Japan'ならば'こんにちは'、
# countryが'America'または'United Kingdom'ならば'Hello'と出力する条件文を作成してください.
country = 'Japan'
if country == 'Japan'
  puts 'こんにちは'
elsif country == 'America' || 'United Kingdom' # || で「または」という意味。「かつ」は && を用いる
  puts 'Hello'
end

# (3)変数ageに数値18を入力してください
# ageが20以上なら'成人です'、18または19なら'法律改正後は成人です'、
# それ未満なら''未成年です'と出力する条件文を作成してください.
age = 18
if age >= 20
  puts '成人です'
elsif age >= 18 # age == 18 || age == 19 でも可
  puts '法律改正後は成人です'
else
  puts '未成年です'
end