module ApplicationHelper

  def format_posted_timeHM(date)
    date.strftime("%H:%M:%S")
  end

  def format_posted_timeYMD(date)
    date.strftime("%m月%d日")
  end

  def format_posted_time(time)
    time.in_time_zone("Tokyo") #タイムゾーン変換
    @time = time.in_time_zone("Tokyo").strftime("%Y-%m-%d %H:%M:%S") #不要な表示削除
  end

end
