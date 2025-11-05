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

# numbers = [1,2,3,4]
# sum = 0
# numbers.each do
#   sum += 1
# end
# p sum

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