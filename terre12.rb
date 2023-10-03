if ARGV.length != 1 || !(ARGV[0] =~ /^(0?[1-9]|1[0-2]):[0-5][0-9](AM|PM)$/)
  puts "erreur."
  exit
end

input_time = ARGV[0]
time_parts = input_time.split(":")
hours = time_parts[0].to_i
minutes_and_period = time_parts[1]
minutes = minutes_and_period[0..1]
period = minutes_and_period[2..3]

if period == "PM"
  hours += 12 if hours != 12
elsif period == "AM" && hours == 12
  hours = 0
end

formatted_time = format("%02d:%02d", hours, minutes)
puts formatted_time
