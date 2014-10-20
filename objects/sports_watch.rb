#!/usr/bin/env ruby
# This is a dumbed down version of a sports watch
# The default display is current time and date
# The sports function would normally collect the data on the fly
# but in this example we are just going to feed it dummy data to
# display

class SportsWatch
  attr_reader :current_date, :current_time
  def initialize
    @current_time = Time.now.strftime('%d.%m')
    @current_date = Time.now.strftime('%l:%M %p')
  end

  def workout(miles, time, avg_bpm)
    @workout_stats = "#{miles}Mi \n#{time}Min \n#{avg_bpm}avg BMP"
  end

  def current_display(display_mode = '')
    if display_mode == 'Log'
      @current_display = @workout_stats
    else
      @current_display = @current_time + "\n" + @current_date
    end
  end
end

watch = SportsWatch.new
watch.workout('5.2', '20', '155')
puts watch.current_display
puts watch.current_display('Log')
