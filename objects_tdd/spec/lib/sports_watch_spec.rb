require 'rspec'
require_relative '../../lib/sports_watch'

describe SportsWatch do
  before do
    @watch = SportsWatch.new
  end

  it 'should initialize to current date in D.M' do
    expect(@watch.current_date).to eq(Time.now.strftime('%d.%t'))
  end

  it 'should initialize to current time in HH:MM' do
    expect(@watch.current_time).to eq(Time.now.strftime('%l:%M %p'))
  end

  context 'describe workout_stats' do
    it 'should take in 3 variable - miles, time and avg BPM' do
      expect(@watch.workout_stats('5.2', '20', '155')).to eq("5.2Mi\n20Min\n155avg BPM")
    end
  end

  context 'describe current_display' do
    it 'should display time and date if != Log' do
      expect(@watch.current_display()).to eq(Time.now.strftime('%d.%t') + "\n" + Time.now.strftime('%l:%M %p'))
    end

    it 'should display workout stats if = Log' do
      @watch.workout_stats('5.2', '20', '155')
      expect(@watch.current_display('Log')).to eq("5.2Mi\n20Min\n155avg BPM")
    end
  end
end
