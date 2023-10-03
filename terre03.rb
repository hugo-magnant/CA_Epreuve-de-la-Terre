# Vérifie si un argument est donné et si c'est une seule lettre
if ARGV.length == 1 && ARGV[0].length == 1 && ARGV[0].match?(/[a-zA-Z]/)
  start_letter = ARGV[0].downcase
  ('a'..'z').each do |letter|
    print letter if letter >= start_letter
  end
  puts
else
  puts "Veuillez fournir une seule lettre en argument."
end
