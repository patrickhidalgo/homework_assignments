class SportsWatch
  def initialize
    @current_date = Time.now.strftime('%d.%t')
    @current_time = Time.now.strftime('%l:%M %p')
  end

  def current_date
    @current_date
  end

  def current_time
    @current_time
  end

  def workout_stats(miles, time, avgbpm)
    @workout_stats = "#{miles}Mi\n#{time}Min\n#{avgbpm}avg BPM"
  end

  def current_display(display_type = 'junk')
    if display_type == 'Log'
      @workout_stats
    else
      @current_display = @current_date + "\n" + @current_time
    end

  end
end
