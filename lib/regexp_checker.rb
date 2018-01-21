print 'Text?: '
text = gets.chomp

begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matchers = text.scan(regexp)
if matchers.size > 0
  puts "Matched: #{matchers.join(', ')}"
else
  puts 'Nothing matchers'
end
