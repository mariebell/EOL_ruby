# 【問題6】メソッドの理解チェック
# (1)「現在時刻は 2018-03-20 22:43:15 +0900 です」
# と出力するようなメソッドcurrentTimeを作成してください.
# ヒント: Time.now で現在時刻を取得できます
def currentTime
  puts "現在時刻は #{Time.now} です"
end
currentTime() #メソッド呼び出し ()は省略できます

# 【補足】日本語で補足する場合
def currentTimeInJapan
  time = Time.now
  print "現在時刻は #{time.year}年#{time.month}月#{time.day}日 #{time.hour}時#{time.min}分#{time.sec}秒です\n"
end
currentTimeInJapan() #メソッド呼び出し ()は省略できます


# (2)引数coinを取り、130円以上なら'コーラ'を出力し、
# それ未満なら'金額が足りません'と出力するvendingMachineメソッドを作成してください.
# 引数に130を入れてメソッドを呼び出すとどうなるでしょうか.
def vendingMachine(coin)
  if coin < 130
    puts "金額が足りません"
  else
    puts "コーラ"
  end
end

vendingMachine(130) #130を代入
# コーラ

# (3)全てが数値である配列numbersを引数に取り、それぞれの値の積(掛け算)をreturnするmultipleAllメソッドを作成してください.
# 引数[111, 222, 333]の場合、どうなるでしょうか.
def multipleAll(nums)
  result = 1;
  nums.each do |n|
    result *= n
  end
  return result
end

numbers = [111, 222, 333]
puts multipleAll(numbers) # 8205786

# 【補足】
# return はその名の通り「返す」という意味です。
# メソッドを呼び出したあと、処理した結果などが返ってくる(returnされる)ことがありますが、これを返り値と呼びます。
# 
#  ans = multipleAll([9, 9])
# 
# 上の場合、mutipleAllの返り値は81であり、変数ansに81が代入されます。
# このansを使って、さらに処理を続けることができます。
# 処理のまとまりをメソッドにすることで、簡潔で読みやすいコードにすることができます。