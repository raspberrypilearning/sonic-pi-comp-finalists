# Title: The space symphony
# Brief: Lively piece of exploring the wonder of space.
# Author: Chenyang Li
# Date:   5 Jan, 2015

use_bpm 86

# start from earth at the beginning
define :earth_start_f do |repeats, amplitude|
    repeats.times do
      sleep 0.5
      play_pattern_timed chord(:c5, :major), 0.5, amp: amplitude
      play_pattern_timed [:e6,:c6,:e6,:c6], [0.5], amp: amplitude
    end
end

# start a space journey
define :earth_journey_f do
    2.times do
      sleep 0.5
      play_pattern_timed [:c5, :f5, :a5, :f6, :c6, :f6, :c6], [0.5], amp: 0.2
    end
    2.times do
      sleep 0.5
      play_pattern_timed chord(:d5, :minor), 0.5, amp: 0.2
      play_pattern_timed [:f6,:d6,:f6,:d6], [0.5], amp: 0.2
    end
end

# wonder a journey to space further
define :earth_wonder_f do
    2.times do
      sleep 0.5
      play_pattern_timed [:c5, :e5, :a5, :e6, :c6, :e6, :c6], [0.5], amp: 0.4
    end
end

# explore gradually and steadily
define :earth_home_f do
    sleep 0.5
    play_pattern_timed [:b4, :d5, :g5, :d6, :b5, :d6, :b5], [0.5], amp: 0.2
    play_pattern_timed [:c5, :c5, :e5, :g5, :c6], [0.5, 0.5, 0.5, 0.5, 2], amp: 0.2
end

# start exploration of the solar system 
define :solar_system_start_f do
  play_pattern_timed [:a5, :gs5], [1.5, 0.5], amp: 0.4
  play_pattern_timed [:e6, :d6, :c6, :b5], [0.5], sustain: 0.3, release: 0.2, amp: 0.3
  play_pattern_timed [:c6, :e6, :a5], [1], sustain: 0.75, release: 0.25, amp: 0.5
  play_pattern_timed [:f6, :e6], [0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:g6], [2], sustain: 1.5, release: 0.5, amp: 0.7
  play_pattern_timed [:f6, :e6], [0.5], amp: 0.5
  play_pattern_timed [:d6, :f6], [1], sustain: 0.75, release: 0.25, amp: 0.4
  play_pattern_timed [:c6, :d6], [0.5], amp: 0.3
  play_pattern_timed [:e6], [2], sustain: 1.5, release: 0.5, amp: 0.2
end

# exploring the solar system and the oort cloud
define :solar_system_journey_f do
  play_pattern_timed [:g5, :e5, :c5, :e5], [2, 0.5, 0.5, 1], amp: 0.2
  play_pattern_timed [:b4, :d5, :g5], [0.5, 0.5, 2], amp: 0.3
  play_pattern_timed [:g5, :c5, :d5, :c5, :e5, :d5, :f5, :e5, :g5, :e5], [0.5], sustain: 0.3, release: 0.2, amp: 0.4  
  play_pattern_timed [:f5, :a5, :f5, :a5], [1, 1, 1.5, 0.5], amp: 0.6 
  play_pattern_timed [:g5, :a5], [0.25], sustain: 0.15, release: 0.1, amp: 0.5
  play_pattern_timed [:g5], [2], sustain: 1, release: 0.5, amp: 0.4
  play_pattern_timed [:d5, :e5, :f5], [0.5], sustain: 0.3, release: 0.2, amp: 0.4
  play_pattern_timed [:d5, :b4], [1], sustain: 0.75, release: 0.25, amp: 0.5
  play_pattern_timed [:f5, :e5, :d5, :e5], [0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:c5, :c5], [1], sustain: 0.75, release: 0.25, amp: 0.7
  play_pattern_timed [:c6, :g5, :c6, :g5, :c6, :c5],[1.5, 0.5, 0.75, 0.25, 1, 2], amp: 0.6
end

# rest after one stage exploration of the solar system and the oort cloud
define :solar_system_rest_f do
  play_pattern_timed [:g5, :g5, :g5],[1.5, 0.25, 0.25], amp: 1
  play_pattern_timed [:fs5, :fs5, :fs5],[1.5, 0.25, 0.25], amp: 0.8
  play_pattern_timed [:d5],[3], sustain: 2.5, release: 0.5, amp: 0.8
  play_pattern_timed [:d5, :e5], [0.25, 0.25], sustain: 0.15, release: 0.1, amp: 0.7
  play_pattern_timed [:d5, :c5, :b4, :c5],[0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:d5, :d5], [0.25,1.25], amp: 0.6
  play_pattern_timed [:b4, :c5, :b4, :a4, :b4 ],[2, 0.5, 0.5, 0.5, 0.5], amp: 0.5
  play_pattern_timed [:c5, :ds5],[1], sustain: 0.75, release: 0.25, amp: 0.6
  play_pattern_timed [:e5, :e5, :e5, :e5, :e5],[2, 0.25, 0.25 ,0.25 ,0.25], amp: 0.5
  play_pattern_timed [:b4],[2], sustain: 1.5, release: 0.5, amp: 0.5
  play_pattern_timed [:d5, :c5, :d5, :g5],[0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:g5, :d5, :f5, :e5, :c5],[1], sustain: 0.75, release: 0.25, amp: 0.6
  play_pattern_timed [:c5],[1], sustain: 0.75, release: 0.25, amp: 0.5
  play_pattern_timed [:b4, :d5, :f5],[0.5], sustain: 0.3, release: 0.2, amp: 0.5
  play_pattern_timed [:eb5], [1.5], sustain: 1, release: 0.5, amp: 0.4
  play_pattern_timed [:d5, :c5],[1], sustain: 0.75, release: 0.25, amp: 0.5
  play_pattern_timed [:b4, :d5, :c5, :e5],[0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:g5],[1], sustain: 0.75, release: 0.25, amp: 0.6
  play_pattern_timed [:d5, :f5],[0.5], sustain: 0.3, release: 0.2, amp: 0.5
  play_pattern_timed [:e5],[2], sustain: 1.5, release: 0.5, amp: 0.5
end

# exploration of the solar system and the oort cloud
define :solar_system_f do
  solar_system_start_f
  solar_system_journey_f
  solar_system_rest_f
  solar_system_journey_f
end

in_thread(name: :solar_system) do
  sync :solar_system_sync
  solar_system_f
end

# start exploration of milky way galaxy, local glactic group and virgo supercluster group
define :virgo_supercluster_start_f do
  play_pattern_timed [:b4],[1.5], sustain: 1, release: 0.5, amp: 0.5
  play_pattern_timed [:d5, :e5, :d5],[0.5], sustain: 0.3, release: 0.2, amp: 0.5
  play_pattern_timed [:g5, :c5, :g4, :c5],[1], sustain: 0.75, release: 0.25, amp: 0.4
  play_pattern_timed [:e5, :g5],[0.5], sustain: 0.3, release: 0.2, amp: 0.3
end
  
# exploring of milky way galaxy, local glactic group and virgo supercluster group
define :virgo_supercluster_journey_f do
  play_pattern_timed [:c5, :g4, :c5],[1], sustain: 0.75, release: 0.25, amp: 0.3
  play_pattern_timed [:e5],[0.5], amp: 0.3
  play_pattern_timed [:c5],[1], sustain: 0.3, release: 0.2, amp: 0.3
  play_pattern_timed [:b4, :d5, :c5, :e5, :d5, :f5, :e5],[0.5], sustain: 0.3, release: 0.2, amp: 0.3
  play_pattern_timed [:a5],[1.5], sustain: 1, release: 0.5, amp: 0.4
  play_pattern_timed [:g5, :a5],[0.25], sustain: 0.15, release: 0.1, amp: 0.3
  play_pattern_timed [:g5, :c5],[1], sustain: 0.75, release: 0.25 , amp: 0.2
end

# rest after one stage exploration of milky way galaxy, local glactic group and virgo supercluster group
define :virgo_supercluster_rest_f do
  play_pattern_timed [:f5, :a5],[1.5, 0.5], amp: 0.4
  play_pattern_timed [:g5, :e5, :f5, :d5], [0.5], sustain: 0.3, release: 0.2, amp: 0.3
  play_pattern_timed [:e5, :c5], [1], sustain: 0.75, release: 0.25, amp: 0.4
  play_pattern_timed [:a4, :c5, :b4, :d5, :c5, :e5, :d5, :f5], [0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:a5, :f5], [1], sustain: 0.75, release: 0.25, amp: 0.8
  play_pattern_timed [:g5, :c5, :g5, :c5], [1.5, 0.5, 0.75, 0.25], amp: 1.5
  play_pattern_timed [:c5, :g5], [0.5, 2.5], amp: 1.3
  play_pattern_timed [:e5, :g5, :d5, :g5, :d5, :fs5], [0.75, 0.25], amp: 1
  play_pattern_timed [:g5, :fs5, :e5, :d5, :fs5, :e5, :d5, :c5], [0.5], sustain: 0.3, release: 0.2, amp: 0.9
  play_pattern_timed [:b4, :d5, :a4, :d5, :g4], [1, 1, 1, 1, 2], amp: 0.9
  sleep 0.5
  play_pattern_timed [:fs4, :g4, :a4], [0.5], sustain: 0.3, release: 0.2, amp: 0.9
  play_pattern_timed [:c5, :b4], [0.5, 1.5], amp: 0.8
  play_pattern_timed [:e5, :b4], [1], sustain: 0.75, release: 0.25, amp: 0.5
  play_pattern_timed [:c5, :b4, :a4, :g4, :b4, :a4, :g4, :fs4], [0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:e4, :e5], [1], sustain: 0.75, release: 0.25, amp: 0.5
  play_pattern_timed [:b4, :d5, :c5, :f5, :d5, :e5], [0.5, 0.5, 1, 0.5, 0.5, 1], amp: 0.6
  play_pattern_timed [:c5], [1], sustain: 0.75, release: 0.25, amp: 0.6
  play_pattern_timed [:g5, :f5, :eb5, :d5], [0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:c5], [1], sustain: 0.75, release: 0.25, amp: 0.6
  play_pattern_timed [:g4, :b4], [0.5], sustain: 0.3, release: 0.2, amp: 0.7
  play_pattern_timed [:d5, :c5, :d5], [1.5, 0.25, 0.25], amp: 0.7
  play_pattern_timed [:c5], [1], sustain: 0.75, release: 0.25, amp: 0.7
  play_pattern_timed [:f5, :d5, :g5], [0.5, 0.5, 3], amp: 0.7
end

# exploration of milky way galaxy, local glactic group and virgo supercluster group
define :virgo_supercluster_f do
  virgo_supercluster_start_f
  virgo_supercluster_journey_f
  virgo_supercluster_rest_f
  virgo_supercluster_journey_f
end

in_thread(name: :virgo_supercluster)do
  sync :virgo_supercluster_sync
  virgo_supercluster_f
end

# exploration of the whole universe
define :universe_f do
  sleep 2
  play_pattern_timed [:c6, :d6, :e6 , :f6], [0.5], sustain: 0.3, release: 0.2, amp: 0.5
  play_pattern_timed [:g6, :c6, :g6, :c6, :c7], [1.5, 0.5, 0.75, 0.25, 1], amp: 0.6
  play_pattern_timed [:b6, :a6, :g6, :fs6], [0.5], sustain: 0.3, release: 0.2, amp: 0.6
  play_pattern_timed [:g6, :b5, :fs6, :d6], [1], sustain: 0.75, release: 0.25, amp: 0.6
  play_pattern_timed [:g5], [1.5], sustain: 1, release: 0.5, amp: 0.6
  play_pattern_timed [:a5, :fs5], [0.25], sustain: 0.15, release: 0.2, amp: 0.6
  play_pattern_timed [:g5, :d5], [2], sustain: 1.5, release: 0.5, amp: 0.7
  play_pattern_timed [:e5, :d5, :c5 , :e5], [0.5], sustain: 0.3, release: 0.2, amp: 0.7
  play_pattern_timed [:d5, :ds5], [2], sustain: 1.5, release: 0.5, amp: 0.6
  play_pattern_timed [:e5, :e5], [0.5, 1.5], amp: 0.6
  play_pattern_timed [:d5, :c5, :b4 , :a4], [0.5], sustain: 0.3, release: 0.2, amp: 0.7
  play_pattern_timed [:g4, :b4], [1], sustain: 1.5, release: 0.5, amp: 0.6
  play_pattern_timed [:c5, :g5, :e5, :g5], [1, 0.5, 0.5, 2], amp: 0.6
  play_pattern_timed [:g5, :f5, :eb5, :d5], [0.5], sustain: 0.3, release: 0.2, amp: 0.5
  play_pattern_timed [:c5, :b4, :c5, :d5, :g4, :g5], [1, 0.5, 0.5, 1.5, 0.5, 2], amp: 0.4
  play_pattern_timed [:f5, :e5, :d5, :c5, :c6], [0.5, 0.5, 0.5, 0.5, 2], amp: 0.3
end

in_thread(name: :universe)do
  sync :universe_sync
  universe_f
end

# earth is the starting point of space exploration
in_thread(name: :main) do
  
  earth_start_f(2, 0.2)
  earth_journey_f
  earth_start_f(2, 0.2)  
  cue :solar_system_sync
  
  earth_wonder_f
  cue :virgo_supercluster_sync
  earth_home_f
  
  earth_start_f(2, 0.2)
  earth_journey_f
  cue :universe_sync
  earth_start_f(2, 0.2)
  
  2.times do
    sleep 0.5
    play_pattern_timed chord(:d5, :major), 0.5, amp: 0.2
    play_pattern_timed [:fs6,:d6,:fs6,:d6], [0.5], amp: 0.2
  end
  2.times do
    sleep 0.5
    play_pattern_timed [:d5, :g5, :b5, :g6, :d6, :g6, :d6], [0.5], amp: 0.2
  end
  
  2.times do
    sleep 0.5
    play_pattern_timed chord(:e5, :minor), 0.5, amp: 0.2
    play_pattern_timed [:g6,:e6,:g6,:e6], [0.5], amp: 0.2
  end
  
  earth_start_f(1, 0.3)
  
  sleep 0.5
  play_pattern_timed chord(:c5, :minor), 0.5, amp: 0.2
  play_pattern_timed [:eb6,:c6,:eb6,:c6], [0.5] , amp: 0.2
  sleep 0.5
  play_pattern_timed [:b4, :d5, :g5, :d6, :b5, :d6, :b5, :c5], [0.5], amp: 0.2
  play_pattern_timed [:c5, :c5, :e5, :g5, :c6], [0.5, 0.5, 0.5, 0.5, 2], amp: 0.2
  earth_start_f(2, 0.2)
  earth_journey_f
  earth_start_f(2, 0.1)
  earth_wonder_f
  earth_home_f
end
