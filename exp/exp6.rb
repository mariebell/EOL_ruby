# 【問題7】クラスの理解チェック
# (1)Catクラスを定義してください.
# Catクラスに「Meow!!」と出力するmeowメソッドを持たせてください.
class Cat
  def meow
    puts 'Meow!!'
  end
end

mike = Cat.new #Catインスタンスの作成
mike.meow

# (2)Nekoクラスを定義してください.
# 引数に名前nameを取ってください.
# nameを用いて「我輩はnameである.」と出力するwagahaiメソッドを定義してください.
# nameを指定しなかった場合(nameが空白''の場合)は「我輩は猫である.名前はまだ無い.」と出力させてください.

class Neko
  def initialize(name = '')
    @name = name
  end

  def wagahai
    if @name.empty?
      puts "我輩は猫である.名前はまだ無い."
    else
      puts "我輩は#{@name}である."
    end
  end
end

tama = Neko.new('タマ次郎') #Nekoインスタンスの作成
tama.wagahai #我輩はタマ次郎である.

mimi = Neko.new() #Nekoインスタンスの作成
mimi.wagahai #我輩は猫である.名前はまだ無い.