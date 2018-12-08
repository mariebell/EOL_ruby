# 【問題4】ハッシュとシンボルの理解チェック
# (1)次のキーと値の組み合わせを持つハッシュhashを作成し、
# each文でそれぞれ「japanの通貨はyenです」というように出力してください.
# キー: japan 値: 'yen'
# キー: us 値: 'dollar'
# キー: india 値: 'rupee'

hash = {
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee'
}
hash.each do |key, value|
  puts "#{key}の通貨は#{value}です"
end


# (2)(1)のキーにシンボルを用いて同様にハッシュhashを作成してください.
# each文でそれぞれ「japanの通貨はyenです」というように出力してください.

hash = { japan: 'yen', us: 'dollar', india: 'rupee' }
# hash = { :japan => 'yen', :us => 'dollar', :india => 'rupee' } も可

hash.each do |key, value|
  puts "#{key}の通貨は#{value}です"
end

# 【解説】
# ハッシュは、イメージとしては配列をパワーアップさせたようなものです。
# それぞれの値に対してキーと言って名前をつけることが可能です。
# キーには文字列またはシンボルを指定します。
# 
# シンボルは文字列とよく似ていますが、シンボルは内部的にも一意の整数値を持つため、
# メモリの使用効率や処理速度がよくなるので、ハッシュのキーなどに文字列の代わりとして使われます。
# 
# 文字列はそれぞれ異なるオブジェクトIDを使用する（内部的には別モノ扱い）
# puts 'hoge'.object_id # 70151719336500
# puts 'hoge'.object_id # 70151719336380
#
# ハッシュは同じオブジェクトIDを使用している
# puts :hoge.object_id # 100162
# puts :hoge.object_id # 100162