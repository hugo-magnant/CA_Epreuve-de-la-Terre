if ARGV.length != 1 || !ARGV[0].is_a?(String)
  puts "erreur."
else
  str = ARGV[0]
  count = 0

  str.each_char do |_|
    count += 1
  end

  puts count
end
