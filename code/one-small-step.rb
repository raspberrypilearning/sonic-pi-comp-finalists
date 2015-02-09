#ready to go
play_pattern_timed scale(:c3, :major), 0.25, release: 0.1
sleep 1

#lift off
4.times do
  play :C, amp:0.2
  sleep 0.5
  play :D, amp:0.25
  sleep 0.5
  play :E, amp:0.3
  sleep 0.5
  play :F, amp:0.35
  sleep 0.5
  play :G, amp:0.4
  sleep 0.5
  play :A, amp:0.45
  sleep 0.5
  play :B, amp:0.5
  sleep 0.5
  play :A, amp:0.55
  sleep 0.5
  play :B, amp:0.6
  sleep 0.5
  play :C, amp:0.65
end

#flight to the moon
use_synth :tb303
25.times do
  play choose(chord(:C3, :minor)), release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end

#descent to the moon
sleep 1
15.times do
  play chord(:G3, :major), amp: 0.2
  sleep 0.5
  play chord(:F3, :major), amp: 0.2
  sleep 0.5
  play chord(:C3, :major), amp: 0.2
  sleep 0.5
end

sleep 1
#on the moon
25.times do
  play choose(chord(:C3, :minor)), release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end

sleep 0.5
#One small step
sample "Apollo 11 samples/62284main_onesmall2.wav", amp: 1.5
sleep 25
#ending
use_synth :prophet
play chord(:C3, :major), amp: 1
sleep 0.75
play chord(:C4, :major), amp: 1
sleep 0.75
play chord(:C3, :major), amp: 1
#END