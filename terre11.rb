if ARGV.length != 1 || !(ARGV[0] =~ /^([01]?[0-9]|2[0-3]):[0-5][0-9]$/)
  puts "erreur."
else
  input_time = ARGV[0]
  time_parts = input_time.split(":")
  hours = time_parts[0].to_i
  minutes = time_parts[1]

  period = "AM"
  if hours >= 12
    period = "PM"
    hours -= 12 if hours > 12
  end

  hours = 12 if hours == 0

  formatted_time = format("%02d:%02d%s", hours, minutes, period)
  puts formatted_time
end
