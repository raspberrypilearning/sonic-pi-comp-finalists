# Space Wonders by Elisa Caro 

in_thread do
  8.times do
    play rrand(50,70)
    sleep 2
  end
end

in_thread do
  6.times do
    sample :guit_e_slide
    sleep 2
  end
end

in_thread do
  use_synth :fm
  5.times do
    play 65
    sleep 2
  end
end

in_thread do
  use_synth :dsaw
  8.times do
    play 40
    sleep 1
  end
end

9.times do
  play 45
  sleep 2
end

in_thread do
  8.times do
    sample :perc_bell
    play 45
    sleep 2
  end
end

in_thread do
  8.times do
    sample :guit_e_fifths
    sleep 2
  end
end

2.times do
  play rrand(45,50)
  sleep 2
end

with_fx:lpf do
  use_synth:mod_saw
  play_pattern [45, 50, 55, 45, 50, 55, 45, 50, 55].shuffle
end

in_thread do
  6.times do
    sample:perc_bell
    play 40
    sleep 1
  end
end

in_thread do
  6.times do
    sample:guit_e_fifths
    sleep 2
  end
end

in_thread do
  8.times do
   play rrand(50,70)
   sleep 2
  end 
end
