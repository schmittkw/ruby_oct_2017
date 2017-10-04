require_relative "human"
require_relative "wizard"
require_relative "ninja"
require_relative "samurai"

gary = Human.new
sammy = Samurai.new
harry = Wizard.new
michealangelo = Ninja.new

players = [gary, sammy, harry, michealangelo]

players.each{|p| puts p}

puts "\ngary attacks sammy"
gary.attack sammy
players.each{|p| puts p}
puts "\nharry fireballs gary"
harry.fireball gary
players.each{|p| puts p}

puts "\nMichealangelo steals from harry"
michealangelo.steal gary
players.each{|p| puts p}

puts "\nMichealangelo gets away"
michealangelo.steal gary
players.each{|p| puts p}

puts "\nHarry heals self"
harry.heal harry
players.each{|p| puts p}

puts "harry heals gary"
harry.heal gary
players.each{|p| puts p}

puts "\nSammy deathblows gary, RETRIBUTION!"
sammy.death_blow gary #rip
players.each{|p| puts p}

puts "\nSammy meditates"
sammy.meditate
players.each{|p| puts p}