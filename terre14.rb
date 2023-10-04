if ARGV.empty? || !ARGV.all? { |arg| arg =~ /^-?\d+$/ }
  puts "erreur."
  exit
end

array = ARGV.map(&:to_i)
is_sorted = true

array.each_with_index do |val, i|
  if i > 0 && array[i] < array[i - 1]
    is_sorted = false
    break
  end
end

puts is_sorted ? "Triée !" : "Pas triée !"
