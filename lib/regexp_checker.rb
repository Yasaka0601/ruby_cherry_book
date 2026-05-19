print 'Text?: '
text = gets.chomp

# ここから例外処理を組み込む
begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.size > 0
    puts "Matched: #{matches.join(', ')}"
else
    puts 'Nothing matched.'
end