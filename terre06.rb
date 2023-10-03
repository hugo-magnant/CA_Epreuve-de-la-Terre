if ARGV.length != 1
  puts "erreur."
else
  str = ARGV[0]
  reversed_str = ""

  str.length.times do |i|
    reversed_str += str[-(i + 1)]
  end

  puts reversed_str
end
