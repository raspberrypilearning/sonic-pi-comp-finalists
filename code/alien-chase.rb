in_thread do
  sleep 3.75
  use_synth :zawa
  play 60
  sleep 1
  play 63
  sleep 1
  play 66
  sleep 1
  play 69, release: 2
  sleep 2
  play 60, release: 0.5
  sleep 0.5
  play 58, release: 0.5
  sleep 0.5
  play 56, release: 0.5
  sleep 0.5
  play 54, release: 2
  sleep 2
  3.times do
    play 54, release: 0.2
    sleep 0.2
    play 65, release: 0.2
    sleep 0.2
    play 67, release: 0.2
    sleep 0.2
    play 64, release: 0.2
    sleep 0.2
    play 66, release: 0.2
    sleep 0.2
    play 63, release: 0.2
    sleep 0.2
  end
  play 65
  sleep 1
  play 68
  sleep 1
  play 71
  sleep 1
  play 74, release: 2
  sleep 2
  3.times do
    play 58, release: 0.2
    sleep 0.2
    play 69, release: 0.2
    sleep 0.2
    play 71, release: 0.2
    sleep 0.2
    play 68, release: 0.2
    sleep 0.2
    play 70, release: 0.2
    sleep 0.2
    play 67, release: 0.2
    sleep 0.2
  end
end
3.times do
  with_fx :wobble do
    sample :ambi_lunar_land, attack: 0, amp: 2
    sleep 7.5
  end
end
in_thread do
  with_fx :wobble do
    sample :ambi_lunar_land, attack: 0, amp: 2
  end
end
sleep 2
in_thread do
  8.times do
    with_fx :distortion do
      sample :ambi_haunted_hum, amp: 2
    end
  end
end
sleep 3
2.times do
  use_synth :zawa
  play 60, cutoff: 130, release: 0.2
  sleep 0.2
  play 62, cutoff: 130, release: 0.2
  sleep 0.2
  play 60, cutoff: 130, release: 1
  sleep 1
  play 58, cutoff: 130, release: 0.2
  sleep 0.2
  play 56, cutoff: 130, release: 0.2
  sleep 0.2
  play 58, cutoff: 130, release: 1
  sleep 1
  play 52, cutoff: 130, release: 0.2
  sleep 0.2
  play 50, cutoff: 130, release: 0.2
  sleep 0.4
end
in_thread do
  with_fx :wobble do
  sample:ambi_lunar_land
  sleep 7.5
  end
end
3.times do
  play 54, release: 0.2
  sleep 0.2
  play 65, release: 0.2
  sleep 0.2
  play 67, release: 0.2
  sleep 0.2
  play 64, release: 0.2
  sleep 0.2
  play 66, release: 0.2
  sleep 0.2
  play 63, release: 0.2
  sleep 0.2
end
with_fx :wobble do
  with_fx :nrhpf do
    sample :ambi_drone, attack: 0, amp: 4
    sleep 5
  end
end
use_synth :tri
play 55, amp: 20, sustain: 2  