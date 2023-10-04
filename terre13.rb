if ARGV.length != 3 || !ARGV.all? { |arg| arg =~ /^-?\d+$/ } || ARGV.uniq.length != 3
  puts "erreur."
  exit
end

a, b, c = ARGV.map(&:to_i)

if (a < b && b < c) || (c < b && b < a)
  puts b
elsif (b < a && a < c) || (c < a && a < b)
  puts a
else
  puts c
end
