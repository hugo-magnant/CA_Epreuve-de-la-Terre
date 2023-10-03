if ARGV.length != 2 || !ARGV.all? { |arg| arg.match?(/^-?\d+$/) }
  puts "erreur."
else
  num1 = ARGV[0].to_i
  num2 = ARGV[1].to_i

  if num2 == 0 || num1 < num2
    puts "erreur."
  else
    resultat = num1 / num2
    reste = num1 % num2
    puts "résultat: #{resultat}"
    puts "reste: #{reste}"
  end
end
