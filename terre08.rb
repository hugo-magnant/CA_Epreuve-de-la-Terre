if ARGV.length != 2 || !ARGV.all? { |arg| arg =~ /^\d+$/ } || ARGV[1].to_i < 0
  puts "erreur."
else
  base = ARGV[0].to_i
  exponent = ARGV[1].to_i
  result = 1

  exponent.times do
    result *= base
  end

  puts result
end
