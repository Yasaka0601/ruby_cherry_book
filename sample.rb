# puts 1 + 2

# a = "Hello,world!!"
# puts a

# b = "こんにちは"
# puts b

# country = 'italy'
# greeting =
# if country == 'japan'
#     'こんにちは'
# elsif country == 'us'
#     'Hello'
# end
# p greeting

# point = 7
# day = 1
# if day == 1
#     point *=5
# end
# p point

# point = 7
# day =1
# point *= 5 if day ==1
# p point

# country = 'italy'
# if country == 'japan' then 'こんにちは'
# elsif country == 'us' then 'Hello'
# elsif country == 'italy' then 'Ciao'
# else '???'
# end

# def add(a,b)
#     a + b
# end
# add(1,2)

# def greet(country)
#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end

# greet('japan')

# def some_method
#     <<-TEXT
#         これはヒアドキュメントです。
#     <<-を使うと最後の識別子をインデントさせることができます。
#     TEXT
# end

# puts some_method

# def some_method
#     <<~TEXT
#         これはヒアドキュメントです。
#     <<~を使うと最後の識別子をインデントさせることができます。
#     TEXT
# end

# puts some_method

# a = 'Ruby'
# a.prepend(<<TEXT)
# Java
# Python
# TEXT
# puts a

# c = [<<TEXT1, <<TEXT2]
# Alice
# Bob
# TEXT1
# Matz
# Jnchto
# TEXT2

# c.each do |i|
#   puts i
# end

# puts c[0]

#sprintf '%#b', (0b1010 & 0b1100)

# country = 'italy'
# greet =
# if country == 'japan'
#   'こんにちは'
# elsif country == 'us'
#   'Hello'
# elsif country == 'italy'
#   'Ciao'
# else
#   '???'
# end

# puts country
# puts greet

# message =
# case country
# when 'japan'
#   'こんにちは'
# when 'us'
#   'Hello'
# when 'italy'
#   'Ciao'
# else
#   '???'
# end
# puts message

# n = 11
# message = n > 10 ? '10より大きい' : '10以下'
# puts message

# def foo(time = Time.now, message = bar)
#   puts "time: #{time}, message: #{message}"
# end

# def bar
#   'BAR'
# end

# def multiple_of_three?(n)
#   n % 3 == 0
# end

# def reverse_upcase(s)
#   s.reverse.upcase
# end
# reverse_upcase("sample")

#def greet = 'Hello!'

# def add(a, b) = a + b
# add(1, 2)

# require 'minitest/autorun'

# class SampleTest < Minitest::Test
#   def test_sample
#     assert_equal 'RUBY','ruby'.upcase
#   end
# end

# quo_rem = 14.divmod(3)
# p quo_rem
# p "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

#  numbers = [1,2,3,4]
# sum = 0
# numbers.each do |n|
#   sum += n
# end
# p sum

#  sum = 0
#  numbers.each do
#     sum += 1
#  end
#  p sum

# sentence = ['ruby','java','python']
# up_sentence = []
# sentence.map { |n| up_sentence << n.upcase }
# p up_sentence

# class User
# end
# user = User.new
# pp user.methods.sort

# def liquid?(temperature)
#   0 <= temperature && temperature < 100
# end

# require 'set'

# a = Set[1, 2, 3]
# b = Set[3, 4, 5]
# p a | b
# p a - b
# p a & b

# jp = ['japan', '日本']
# country = '日本'
# case country
# when *jp
#   p 'こんにちは'
# end

# a = Array.new(10){ |n| n % 3 + 1 }
# p a

# p (1..5).to_a

# numbers = []

# (1..10).step(2) { |n| numbers << n }

# p numbers

# p 'ruby'.chars

# p Array.new(10) { |n| n % 3 + 1 }

# a = Array.new(5, 'default')
# p a
# str = a[0]
# p str.upcase!
# p a


# b = Array.new(5) { 'default' }
# p b
# str = b[0]
# p str.upcase!
# p b

# fruits = ['apple', 'orange', 'melon']

# p fruits.each

##### 番号指定パラメーター ######

# puts "\n 番号指定パラメーターを使わない場合"
# p ['1', '20', '300'].map { |s| s.rjust(3, '0') }

# puts "\n 番号指定パラメーターを使う場合"
# p ['1', '20', '300'].map { _1.rjust(3, '0') }

# dimensions = [
#     [10, 20],
#     [30, 40],
#     [50, 60],
# ]
# dimensions.each { p _1}

# puts "\n 入れ子構造になるとエラーになる"
# sum = 0
# [[1, 2, 3],[4, 5, 6]].each do
#     _1.each do
#         sum += _1
#     end
# end

# puts "\n エラーにならない"
# sum = 0
# [[1, 2, 3],[4, 5, 6]].each do |v|
#     v.each do
#         sum += _1
#     end
# end
# p sum

# puts "\n ブロックパラメータと併用するとエラーになる"
# ['1', '20', '300'].map {|s| _1.rjust(3, '0') }

##### while 文 #####

# a = [ ]

# begin
#     a << 1
# end while false

# p a

##### 再帰呼び出し #####

# def factorial (n)
#     n > 0 ? n * factorial(n - 1) : 1
# end

##### ハッシュ #####

# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# currencies.each do |n|
#     key = n[0]
#     value = n[1]
#     puts "#{key} : #{value}"
# end

######### 正規表現 #########

# text = <<-TEXT
# 名前：伊藤淳一
# 電話：03-1234-5678
# 住所：兵庫県西脇市板波町1-2-3
# TEXT

# p text.scan /\d\d-\d\d\d\d-\d\d\d\d/

# text = <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT

# p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
# text = <<-TEXT
# <select name="game_console">
# <option value="wii_u">Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# TEXT

# p text.scan /<option value="([a-z0-9_]+)">(.+)<\/option>/

# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

# puts replaced

# text = <<-TEXT
# def hello(name)
#   puts "Hello, \#{name}!"
# end

# hello('Alice')
     
# hello('Bob')
	
# hello('Carol')
# TEXT

# puts text.gsub(/^[ \t]+$/,'')

#### gsub メソッドはマッチした部分を全て置換する。gsub(検索する文字 , 置換する文字)

# text = <<-TEXT
# {
#   japan:	'yen',
#   america:'dollar',
#   italy:     'euro'
# }
# TEXT

# puts text.gsub(/:\s*/,': ')

# text = <<-TEXT
# name,email
# alice,alice@example.com
# bob,bob@example.com
# TEXT

# puts text.gsub(/','/, \t)

# text = <<-TEXT
# Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
# Feb 14 07:36:46 heroku/api:  Starting process ...
# Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
# Feb 14 07:36:50 heroku/scheduler.7625:  State ...
# Feb 14 07:36:54 heroku/router:  at=info method=...
# Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
# Feb 14 07:36:54 app/web.1:  Completed 200 ...
# TEXT

# p text.scan(/^.+heroku\/(?:api|scheduler).+$/)

