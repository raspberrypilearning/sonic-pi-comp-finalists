#kimberley and ellie mars tune
#
#load samples so thread can keep up.
load_samples [:ambi_lunar_land, :ambi_haunted_hum, :ambi_glass_hum,
              :ambi_dark_woosh, :elec_mid_snare,
              :guit_e_slide, :ambi_glass_rub,:guit_e_fifths]
sleep 1 # allow time for samples to load.
use_bpm 30

#countdown...
use_synth :pulse
play 100, attack:0.5, sustain:1, release:0.5
wait 0.2
play 90, attack:0.5, sustain:1, release:0.5
wait 0.5
play 80, attack:0.5, sustain:1, release:0.5
wait 0.5
play 70, attack:0.5, sustain:1, release:0.5
wait 0.5
play 60, attack:0.5, sustain:1, release:0.5
wait 0.5
play 50, attack:0.5, sustain:1, release:0.5
wait 0.5
play 40, attack:0.5, sustain:1, release:0.5
wait 0.5
play 30, attack:0.5, sustain:1, release:0.5
wait 0.5
play 20, attack:0.5, sustain:1, release:0.5
wait 0.5
play 10, attack:0.5, sustain:1, release:0.5
wait 0.5

# spaceship blasts off
use_synth :supersaw
play_pattern [45, 67, 82, 12, 85, 60]
10.times do
  with_fx :echo do
    play 60
    wait 0.5
  end
end

#power activates
sample :ambi_lunar_land
sample :ambi_haunted_hum
wait (sample_duration :ambi_lunar_land) * 0.5 
play 60, sustain:2, release:2
wait 3
sample :ambi_glass_hum
wait 1
use_synth :dsaw
play 60, attack:2, sustain:2, release:2
wait 5

#proximity alarm
5.times do
  sample :elec_mid_snare
  sleep 1
  sample :guit_e_slide
  sleep 0.5
  play 130
  sleep 0.5
end

#here come the aliens
sample :ambi_glass_rub
sleep 0.5
sample :ambi_haunted_hum
sleep 0.5
play 60.8
sleep 0.5
sample :guit_e_fifths
sleep 3

#emergency liftoff
3.times do
  sample :ambi_lunar_land
  sample :ambi_haunted_hum
  sample :ambi_dark_woosh
  wait 5 #length of longest sample above made it shorter because the bpm is at half speed
end