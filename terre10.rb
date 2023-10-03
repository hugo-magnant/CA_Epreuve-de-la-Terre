if ARGV.length != 1 || !(ARGV[0] =~ /^\d+$/)
  puts "erreur."
else
  num = ARGV[0].to_i
  if num <= 1
    puts "Non, #{num} n’est pas un nombre premier."
  else
    is_prime = true
    for i in 2..Math.sqrt(num).to_i
      if num % i == 0
        is_prime = false
        break
      end
    end
    if is_prime
      puts "Oui, #{num} est un nombre premier."
    else
      puts "Non, #{num} n’est pas un nombre premier."
    end
  end
end
