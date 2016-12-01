class CurrentSchedule
  attr_accessor :day, :period, :week

  def initialize
    self.day = get_day
    self.period = get_period
    self.week = get_week
    #self.period = period
  end

  def get_day
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    current_day_number = Time.now.wday
    current_weekday = weekdays[current_day_number]
  end

  def get_period
    now = Time.now.strftime("%H%M").to_i

    case now
    when 815...827
      return "0"
    when  828...913
      return "1"
    when 914...1003
      return "2"
    when 1004...1057
      return "3"
    when 1058...1123
      return "4A"
    when 1124...1148
      return "4B"
    when 1149...1214
      return "5A"
    when 1215...1239
      return "5B"
    when 1240...1305
      return "6A"
    when 1306...1330
      return "6B"
    when 1331...1420
      return "7"
    when 1421...1511
      return "8"
    else
      return "OUT OF SCHOOL HOURS"
    end
end

  def get_week
    now = Time.now.strftime("%U").to_i

    if now % 2 == 0
      return "B"
    else
      return "A"
    end
 end
end
