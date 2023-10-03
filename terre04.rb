if ARGV.length != 1
  puts "Tu ne me la mettras pas à l'envers."
else
  argument = ARGV[0]

  if argument.match?(/^-?\d+$/)
    num = argument.to_i
    if num % 2 == 0
      puts "pair"
    else
      puts "impair"
    end
  else
    puts "Tu ne me la mettras pas à l'envers."
  end
