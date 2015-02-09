#Connor, Jack, Ethan !!!!
# SUPER SPACE.
load_samples [:ambi_lunar_land, :ambi_haunted_hum,
              :drum_snare_hard,:drum_splash_soft,:bass_drop_c,
              :drum_tom_mid_hard, :ambi_dark_woosh,:bass_thick_c,
              :drum_heavy_kick]
sleep 1

# begining of a moon landing  (~ 20 secs)
sample :ambi_lunar_land
sample :ambi_haunted_hum
sleep sample_duration :ambi_lunar_land
play 64,  attack: 2,sustain: 2,release: 2
sleep 8.1
play 60, attack: 2, sustain: 2
sleep 4.1


# someone walking on the moon  (~10 secs)

with_fx :echo, phase: 0.5 do
  8.times do
    play :C2, release: 0.2
    sleep 1.3
  end
end

#introduce a beat for 40 beats
in_thread do
  20.times do
    sample :drum_snare_hard, amp: 0.5, pan: -1
    sleep 0.5
    sample :drum_splash_soft, amp: 0.5, pan: 1
    sleep 0.5
    sample :bass_drop_c, amp: 0.5, pan: -1
    sleep 0.5
    sample :drum_tom_mid_hard, amp: 0.5, pan: 1
    sleep 0.5
  end
end

sleep 2

#commet going past...  (7.5 secs)

use_synth :dsaw
with_fx  :distortion do
  sample :ambi_dark_woosh, rate: -0.5
end
sleep sample_duration :ambi_dark_woosh, rate: -0.5



#racing lunar rover   (22 secs)
use_synth :tb303
s = play 50, attack: 10, sustain: 2, release: 10, note_slide: 11
control s, note: 60
sleep 11
control s, note: 50
play 60
sleep 11


#alien landing  (sliding to a thud   3.5 ~ secs)
sample :bass_drop_c
sleep sample_duration :bass_drop_c
#thud
sample :bass_thick_c  , attack:  0,
  attack_level: 1.5 , decay: 0.5,
  sustain: 0,
  sustain_level: 0
sample :drum_snare_hard
sample :drum_heavy_kick
sleep 1


#invasion alarm...    (~ 9 secs)
use_synth :pretty_bell
sleep 0.5
with_fx :echo, phase: 0.5, decay: 4 do
  5.times do
    play_pattern_timed [:B3, :Fs, :G3],[0.25,0.5], release: 0.4
  end
end
sleep 3.5

# some chord progression by our guitarist...  (~ 9 secs)
use_synth :tri
t =0
3.times do
  play_chord chord [:E3, :minor]
  sleep 1
  play_chord chord [:G3, :major]
  sleep 1
  play_chord chord [:D3, :major]
  sleep 1
  use_transpose t+4
end

use_transpose 0


#racing lunar rover   (22 secs)
use_synth :tb303
s = play 50, attack: 10, sustain: 2, release: 10, note_slide: 11
control s, note: 60
sleep 11
control s, note: 50
play 60
sleep 11

# someone walking on the moon  (~10 secs)

with_fx :echo, phase: 0.5 do
  8.times do
    play :C2, release: 0.2
    sleep 1.3
  end
end