def jplay (n, r, a)
  play n, release: r, amp: a
  sleep r
end

3.times do
  jplay(:A5, 1.5, 0.5)
end

in_thread do
  use_synth :pnoise
  4.times do
    jplay(:C5, 2, 0.75)
  end
end

in_thread do
  engine_pitch = 55
  engine_amp = 1.0
  use_synth :mod_dsaw
  s = play engine_pitch, release: 16, amp: engine_amp
  38.times do
    control s, note: engine_pitch
    control s, amp: engine_amp
    sleep 0.25
    engine_pitch = engine_pitch + 0.25
    if (engine_amp > 0.025) then
      engine_amp = engine_amp - 0.025
    end
  end
end

sleep 10

drone_amp = 0.1
in_thread do
  3.times do
    sample :ambi_lunar_land
    use_synth :mod_dsaw
    jplay(:G3, 1, drone_amp)
    jplay(:G4, 1, drone_amp)
    jplay(:Gb4, 1, drone_amp)
    sleep 1
    jplay(:G3, 1, drone_amp)
    jplay(:G4, 1, drone_amp)
    jplay(:Ab4, 1, drone_amp)
    sleep 1
  end
end

drum_amp = 0.5
in_thread do
  3.times do
    sleep 3
    sample :drum_heavy_kick, amp: drum_amp
    sleep 0.5
    sample :drum_cymbal_hard, amp: drum_amp
    sleep 0.5
    sleep 3
    sample :drum_heavy_kick, amp: drum_amp
    sleep 0.5
    sample :drum_cymbal_hard, amp: drum_amp
    sleep 0.5
  end
end

sleep 16

sleep 1
use_synth :mod_sine
jplay(:G3, 1, 1)
jplay(:D4, 1, 1)
jplay(:Db4, 1, 1)
jplay(:G3, 1, 1)
jplay(:D4, 1, 1)
play :Eb4
play :E4
sleep 1

use_synth :mod_dsaw
jplay(:G3, 1, 1)
jplay(:D4, 1, 1)
jplay(:Db4, 1, 1)
use_synth :mod_pulse
jplay(:D4, 1, 1)
jplay(:A4, 1, 1)
jplay(:Ab4, 1, 1)
use_synth :beep
jplay(:A4, 1, 1)
jplay(:E5, 1, 1)
jplay(:Eb5, 1, 1)
use_synth :fm
jplay(:E5, 1, 1)
jplay(:B5, 1, 1)
jplay(:Bb5, 1, 1)
sample :drum_cymbal_open
sample :drum_heavy_kick

c = 1
d = 1
15.times do
  use_synth :mod_dsaw
  jplay(:G3, d, 1)
  use_synth :mod_pulse
  jplay(:D4, d, 1)
  use_synth :beep
  jplay(:A4, d, 1)
  use_synth :fm
  jplay(:E5, d, 1)
  c = c + 1
  if (c == 2 or c == 4 or c == 8) then
    d = d / 2.0
  end
end

2.times do
  sample :ambi_lunar_land
  use_synth :mod_dsaw
  jplay(:G3, 1, drone_amp)
  jplay(:G4, 1, drone_amp)
  jplay(:Gb4, 1, drone_amp)
  sleep 1
  jplay(:G3, 1, drone_amp)
  jplay(:G4, 1, drone_amp)
  jplay(:Ab4, 1, drone_amp)
  sleep 1

  sample :ambi_lunar_land
  jplay(:Ab4, 1, drone_amp)
  jplay(:G4, 1, drone_amp)
  jplay(:G3, 1, drone_amp)
  sleep 1
  jplay(:Gb4, 1, drone_amp)
  jplay(:G4, 1, drone_amp)
  jplay(:G3, 1, drone_amp)
  sleep 1
end

in_thread do
  p = 69
  v = 1.0
  interval_1 = 76 - 69
  interval_2 = 75 - 69
  12.times do
    jplay(p, 0.25, v)
    jplay(p + interval_1, 0.25, v)
    jplay(p + interval_2, 0.25, v)
    p = p - 1
    if (v > 0.1) then
      v = v - 0.1
    end
  end
end

in_thread do
  in_thread do
    use_synth :pnoise
    4.times do
      jplay(:C5, 2, 0.75)
    end
  end

  in_thread do
    engine_pitch = 70
    engine_amp = 1.0
    use_synth :mod_dsaw
    s = play engine_pitch, release: 8, amp: engine_amp
    38.times do
      control s, note: engine_pitch
      control s, amp: engine_amp
      sleep 0.25
      engine_pitch = engine_pitch - 0.25
      if (engine_amp > 0.025) then
        engine_amp = engine_amp - 0.025
      end
    end
  end
end
