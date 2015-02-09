## Planet PI
2. times do
  with_fx :wobble, phase:5 do
    with_fx :echo, decay: 8 do
      sample :elec_blip
      sample :bass_hit_c
    end
  end
  sleep 2
  play 55
  sleep 2
end
  sample :ambi_drone
2. times do
  with_fx :wobble, phase:5 do
    with_fx :echo, decay: 8 do
      sample :elec_blip
      sample :bass_hit_c
      sample :ambi_drone
    end
  end
  sleep 2
  play 55
  sleep 2
end
sample :ambi_drone
sleep 0.5
sample :ambi_drone
  takeoff = 20
  while takeoff < 60
    play takeoff
    sleep 0.15
    play takeoff +20
    sleep 0.15
    takeoff +=1
  end
  use_synth :tri
  3.times do
    play 60, amp: 0.5, attack: 1, release: 3
    sleep 0.5
    play 62, amp: 0.5, attack: 1, release: 3
    sleep 0.5
    play 64, amp: 0.5, attack: 1, release: 1
    sleep 0.5
    play 60, amp: 0.5, attack: 1, release: 3
    sleep 0.5
  end
  use_synth :beep
  8.times do
    play 50
    sleep 0.5
    play 54
    sleep 0.5
    play 60
    sleep 0.5
  end
  sample :ambi_lunar_land
  use_synth :tb303
  2.times do
    play_pattern_timed [60,64,67],0.50, release: 2
    sleep 0.2
  end
  sample :ambi_lunar_land
  2.times do
    play_pattern_timed [62,65,69],0.50, release: 2
    sleep 0.2
  end
  sample :ambi_lunar_land
  2.times do
    play_pattern_timed [64,67,71],0.50, release: 2
    sleep 0.2
  end
  sample :ambi_lunar_land
  2.times do
    play_pattern_timed [65,69,72],0.50, release: 2
    sleep 0.2
  end
  sample :ambi_lunar_land
  2.times do
    play_pattern_timed [67,71,74],0.50, release: 2
    sleep 0.2
  end
  sample :ambi_lunar_land
  2.times do
    play_pattern_timed [69,72,76],0.50, release: 2
    sleep 0.2
  end
  sample :ambi_lunar_land
  use_synth :tb303
play chord(:a4, :minor), release: 4
sleep 3
play chord(:g4, :major), release: 4
sleep 3
play chord(:f4, :major), release: 4
sleep 3
play chord(:e4, :minor), release: 4
sleep 3
play chord(:d4, :minor), release: 4
sleep 3
play chord(:c4, :major), release: 4
sleep 3
  takeoff = 80

  while takeoff > 60
    play takeoff
    sleep 0.25
    play takeoff -20
    sleep 0.25
    takeoff -=1
  end
  use_synth :cnoise
play 55, release: 2