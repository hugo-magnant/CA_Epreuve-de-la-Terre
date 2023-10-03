if ARGV.length != 1 || !(ARGV[0] =~ /^\d+$/) || ARGV[0].to_i <= 0
  puts "erreur."
else
  num = ARGV[0].to_i
  approx = num.to_f / 2.0
  
  20.times do
    approx = (approx + num / approx) / 2.0
  end

  puts approx.round
end
